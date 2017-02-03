using System;
using System.Collections.Generic;
using System.Linq;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	public class MultithreadedPathfinder<TNodeNetwork> : IMultithreadedPathfinder, IDisposable
		where TNodeNetwork : INodeNetworkBase
	{
		private readonly MultithreadedWorkerQueue<CompletedPath, PathRequest> _multithreadedWorkerQueue;

		public MultithreadedPathfinder(IList<TNodeNetwork> sourceNodeNetworks, IPathFindAlgorithm<TNodeNetwork> pathFindAlgorithm, int maxThreads = 1)
		{
			var firstNodeGrid = sourceNodeNetworks.FirstOrDefault();
			if (firstNodeGrid == null) throw new ArgumentException("Please provide atleast one nodegrid");

			var pathfinders = new List<IProcesser<CompletedPath, PathRequest>>();
			for (int i = 0; i < maxThreads; i++)
			{
				pathfinders.Add(new PathRequestProcesser<TNodeNetwork>(sourceNodeNetworks, pathFindAlgorithm));
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
				completedPath.Callback.Invoke(completedPath);
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
