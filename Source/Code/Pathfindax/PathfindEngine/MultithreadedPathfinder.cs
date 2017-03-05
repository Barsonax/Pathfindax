using System;
using System.Collections.Generic;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	/// <summary>
	/// Provides multithreading functionality using a producer consumer queue
	/// </summary>
	/// <typeparam name="TNodeNetwork"></typeparam>
	public class MultithreadedPathfinder<TNodeNetwork> : IMultithreadedPathfinder, IDisposable
		where TNodeNetwork : INodeNetwork
	{
		private readonly MultithreadedWorkerQueue<CompletedPath, PathRequest> _multithreadedWorkerQueue;

		/// <summary>
		/// Creates a new <see cref="MultithreadedPathfinder{TNodeNetwork}"/>
		/// </summary>
		/// <param name="nodeNetworks">Each thread will use its own <typeparamref name="TNodeNetwork"/></param>
		/// <param name="pathFindAlgorithm">The algorithm that will be used to find a path</param>
		/// <param name="pathPostProcesses">The post processes that will be applied after the path has been found</param>
		public MultithreadedPathfinder(IEnumerable<TNodeNetwork> nodeNetworks, IPathFindAlgorithm<TNodeNetwork> pathFindAlgorithm, IList<IPathPostProcess> pathPostProcesses = null)
		{
			var pathfinders = new List<IProcesser<CompletedPath, PathRequest>>();
			foreach (var nodeNetwork in nodeNetworks)
			{
				pathfinders.Add(new PathRequestProcesser<TNodeNetwork>(nodeNetwork, pathFindAlgorithm, pathPostProcesses ?? new List<IPathPostProcess>()));
			}
			_multithreadedWorkerQueue = new MultithreadedWorkerQueue<CompletedPath, PathRequest>(pathfinders);
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
		/// Calls the callbacks on the <see cref="CompletedPath"/>s and removes them from the completed queue.
		/// </summary>
		public void ProcessCompletedPaths()
		{
			CompletedPath completedPath;
			while (_multithreadedWorkerQueue.TryDequeue(out completedPath))
			{
				completedPath.PathRequest.Callback.Invoke(completedPath);
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
