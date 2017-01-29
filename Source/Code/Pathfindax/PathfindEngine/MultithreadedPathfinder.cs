using System;
using System.Collections.Generic;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	public class MultithreadedPathfinder<TNode> : IMultithreadedPathfinder, IDisposable
		where TNode : INode
	{
		private readonly MultithreadedWorkerQueue<CompletedPath, PathRequest> _multithreadedWorkerQueue;

		public MultithreadedPathfinder(IList<INodeGrid<TNode>> nodeGrids, IPathFindAlgorithm<TNode> pathFindAlgorithm, int maxThreads = 1, long checkInterval = 10)
		{
			var pathfinders = new List<IProcesser<CompletedPath, PathRequest>>();
			for (int i = 0; i < maxThreads; i++)
			{
				pathfinders.Add(new Pathfinder<TNode>(nodeGrids, pathFindAlgorithm));
			}
			_multithreadedWorkerQueue = new MultithreadedWorkerQueue<CompletedPath, PathRequest>(pathfinders, checkInterval);
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
			_multithreadedWorkerQueue.Enqueue(pathRequest, pathRequest.Callback);
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
