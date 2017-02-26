using System;
using System.Collections.Generic;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	public class MultithreadedPathfinder<TNodeNetwork> : IMultithreadedPathfinder, IDisposable
		where TNodeNetwork : INodeNetworkBase
	{
		private readonly MultithreadedWorkerQueue<CompletedPath, PathRequest> _multithreadedWorkerQueue;

		public MultithreadedPathfinder(TNodeNetwork nodeNetwork, IPathFindAlgorithm<TNodeNetwork> pathFindAlgorithm, IList<IPathPostProcess> pathPostProcesses = null, int amountOfThreads = 1)
		{
			var pathfinders = new List<IProcesser<CompletedPath, PathRequest>>();
			for (int i = 0; i < amountOfThreads; i++)
			{
				pathfinders.Add(new PathRequestProcesser<TNodeNetwork>(nodeNetwork, pathFindAlgorithm, pathPostProcesses ?? new List<IPathPostProcess>()));
			}
			_multithreadedWorkerQueue = new MultithreadedWorkerQueue<CompletedPath, PathRequest>(pathfinders);
		}

		public void Start()
		{
			_multithreadedWorkerQueue.Start();
		}

		public void Stop()
		{
			_multithreadedWorkerQueue.Stop();
		}

		public void RequestPath(PathRequest pathRequest)
		{
			_multithreadedWorkerQueue.Enqueue(pathRequest);
		}

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
