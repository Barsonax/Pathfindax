using System;
using System.Collections.Generic;
using System.Linq;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	public class MultithreadedPathfinder<TNodeNetwork, TNode> : IMultithreadedPathfinder, IDisposable
		where TNodeNetwork : INodeNetwork<TNode>
		where TNode : INode
	{
		private readonly MultithreadedWorkerQueue<CompletedPath, PathRequest> _multithreadedWorkerQueue;

		public MultithreadedPathfinder(IList<TNodeNetwork> nodeNetworks, IPathFindAlgorithm<TNodeNetwork, TNode> pathFindAlgorithm, int maxThreads = 1)
		{
			var firstNodeGrid = nodeNetworks.FirstOrDefault();
			if (firstNodeGrid == null) throw new ArgumentException("Please provide atleast one nodegrid");

			var pathfinders = new List<IProcesser<CompletedPath, PathRequest>>();
			for (int i = 0; i < maxThreads; i++)
			{
				pathfinders.Add(new PathRequestProcesser<TNodeNetwork, TNode>(nodeNetworks, pathFindAlgorithm));
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
