using System;
using Pathfindax.Grid;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	/// <summary>
	/// Provides multithreading functionality using a producer consumer queue
	/// </summary>
	/// <typeparam name="TSourceNodeNetwork"></typeparam>
	/// <typeparam name="TThreadNodeNetwork"></typeparam>
	public class Pathfinder<TSourceNodeNetwork, TThreadNodeNetwork> : IPathfinder<TSourceNodeNetwork>, IDisposable
		where TSourceNodeNetwork : INodeNetwork
		where TThreadNodeNetwork : INodeNetwork
	{
		public TSourceNodeNetwork SourceNodeNetwork { get; }
		private readonly MultithreadedWorkerQueue<PathRequest> _multithreadedWorkerQueue;

		/// <summary>
		/// Creates a new <see cref="Pathfinder{TSourceNodeNetwork,TThreadNodeNetwork}"/>
		/// </summary>
		/// <param name="sourceNodeNetwork"></param>
		/// <param name="processerConstructor">Used to construct the processers for each thread</param>
		/// <param name="threads">The amount of threads that will be used</param>
		public Pathfinder(TSourceNodeNetwork sourceNodeNetwork, Func<TSourceNodeNetwork, PathRequestProcesser<TThreadNodeNetwork>> processerConstructor, int threads = 1)
		{
			SourceNodeNetwork = sourceNodeNetwork;
			_multithreadedWorkerQueue = new MultithreadedWorkerQueue<PathRequest>(() => processerConstructor.Invoke(SourceNodeNetwork), threads);
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
		public void RequestPath(PathRequest pathRequest)
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
