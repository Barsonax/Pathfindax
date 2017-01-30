using System;
using System.Collections.Generic;
using System.Linq;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Primitives;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	public class MultithreadedPathfinder<TNode> : IMultithreadedPathfinder, IDisposable
		where TNode : IGridNode
	{
		public PositionF WorldSize { get; }
		private readonly MultithreadedWorkerQueue<CompletedPath, PathRequest> _multithreadedWorkerQueue;

		public MultithreadedPathfinder(IList<INodeGrid<TNode>> nodeGrids, IPathFindAlgorithm<TNode> pathFindAlgorithm, int maxThreads = 1)
		{
			var firstNodeGrid = nodeGrids.FirstOrDefault();
			if (firstNodeGrid == null) throw new ArgumentException("Please provide atleast one nodegrid");
			foreach (var nodeGrid in nodeGrids)
			{
				if (nodeGrid.WorldSize != firstNodeGrid.WorldSize) throw new ArgumentException("All nodegrids must have the same worldsize!");
			}
			WorldSize = firstNodeGrid.WorldSize;

			var pathfinders = new List<IProcesser<CompletedPath, PathRequest>>();
			for (int i = 0; i < maxThreads; i++)
			{
				pathfinders.Add(new PathRequestProcesser<TNode>(nodeGrids, pathFindAlgorithm));
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
