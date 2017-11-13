using System;
using System.Collections.Generic;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Paths;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	/// <summary>
	/// Provides multithreading functionality using a producer consumer queue
	/// </summary>
	/// <typeparam name="TDefinitionNodeNetwork"></typeparam>
	/// <typeparam name="TThreadNodeNetwork"></typeparam>
	/// <typeparam name="TPath"></typeparam>
	public class Pathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> : IPathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath>, IDisposable
		where TDefinitionNodeNetwork : IDefinitionNodeNetwork
		where TThreadNodeNetwork : IPathfindNodeNetwork
		where TPath : class, IPath
	{
		public IPathFindAlgorithm<TThreadNodeNetwork, TPath> PathFindAlgorithm { get; }
		IPathFindAlgorithm<TPath> IPathfinder<TPath>.PathFindAlgorithm => PathFindAlgorithm;
		IPathFindAlgorithm IPathfinder.PathFindAlgorithm => PathFindAlgorithm;

		private readonly List<TThreadNodeNetwork> _pathfindNodeNetworks = new List<TThreadNodeNetwork>();
		public IReadOnlyList<TThreadNodeNetwork> PathfindNodeNetworks => _pathfindNodeNetworks;
		IReadOnlyList<IPathfindNodeNetwork> IPathfinder.PathfindNodeNetworks => (IReadOnlyList<IPathfindNodeNetwork>)PathfindNodeNetworks;

		public TDefinitionNodeNetwork DefinitionNodeNetwork { get; }
		IDefinitionNodeNetwork IPathfinder.DefinitionNodeNetwork => DefinitionNodeNetwork;

		private readonly MultithreadedWorkerQueue<PathRequest<TPath>> _multithreadedWorkerQueue;

		/// <summary>
		/// Creates a new <see cref="Pathfinder{TSourceNodeNetwork,TThreadNodeNetwork, TPath}"/>
		/// </summary>
		/// <param name="definitionNodeNetwork"></param>
		/// <param name="pathFindAlgorithm"></param>
		/// <param name="processerConstructor">Used to construct the processers for each thread</param>
		/// <param name="threads">The amount of threads that will be used</param>
		public Pathfinder(TDefinitionNodeNetwork definitionNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath> pathFindAlgorithm, Func<TDefinitionNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath>, PathRequestProcesser<TThreadNodeNetwork, TPath>> processerConstructor, int threads = 1)
		{
			PathFindAlgorithm = pathFindAlgorithm;
			DefinitionNodeNetwork = definitionNodeNetwork;
			_multithreadedWorkerQueue = new MultithreadedWorkerQueue<PathRequest<TPath>>(() =>
			{
				var processer = processerConstructor.Invoke(DefinitionNodeNetwork, pathFindAlgorithm);
				_pathfindNodeNetworks.Add(processer.NodeNetwork);
				return processer;
			}, threads);
		}

		/// <summary>
		/// Starts giving the pathfinders paths to solve if there are any
		/// </summary>
		public void Start()
		{
			_multithreadedWorkerQueue.Start();
		}

		/// <summary>
		/// Stops giving the pathfinders paths to solve if there are any
		/// </summary>
		public void Stop()
		{
			_multithreadedWorkerQueue.Stop();
		}

		/// <summary>
		/// Requests a path
		/// </summary>
		/// <param name="pathRequest"></param>
		public void RequestPath(PathRequest<TPath> pathRequest)
		{
			_multithreadedWorkerQueue.Enqueue(pathRequest);
		}

		/// <summary>
		/// Calls the callbacks on the <see cref="PathRequest"/>s and removes them from the completed queue.
		/// </summary>
		public void ProcessCompletedPaths()
		{
			while (_multithreadedWorkerQueue.TryDequeue(out var pathRequest))
			{
				pathRequest.CallCallbacks();
			}
		}

		/// <summary>
		/// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
		/// </summary>
		public void Dispose()
		{
			_multithreadedWorkerQueue.Dispose();
		}
	}
}
