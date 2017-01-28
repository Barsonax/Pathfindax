using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading.Tasks;
using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	public class MultithreadedPathfinder<TNode> : IMultithreadedPathfinder, IDisposable
		where TNode : INode
	{
		private readonly MultithreadedWorker<CompletedPath, PathRequest> _multithreadedWorker;

		public MultithreadedPathfinder(IList<INodeGrid<TNode>> nodeGrids, IPathFindAlgorithm<TNode> pathFindAlgorithm, int maxThreads = 1, long checkInterval = 10)
		{
			var pathfinders = new List<IProcesser<CompletedPath, PathRequest>>();
			for (int i = 0; i < maxThreads; i++)
			{
				pathfinders.Add(new Pathfinder<TNode>(nodeGrids, pathFindAlgorithm));
			}
			_multithreadedWorker = new MultithreadedWorker<CompletedPath, PathRequest>(pathfinders, checkInterval);
		}

		public void Start()
		{
			_multithreadedWorker.Start();
		}

		public void Stop()
		{
			_multithreadedWorker.Stop();
		}

		public void RequestPath(PathRequest pathRequest)
		{
			_multithreadedWorker.Enqueue(pathRequest, pathRequest.Callback);
		}

		/// <summary>
		/// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
		/// </summary>
		public void Dispose()
		{
			_multithreadedWorker.Dispose();
		}
	}
}
