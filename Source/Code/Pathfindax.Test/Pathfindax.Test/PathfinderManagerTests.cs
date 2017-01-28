using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Duality;
using NSubstitute;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test
{
	[TestFixture]
	public class PathfinderManagerTests
	{
		[Test]
		[MaxTime(5000)]
		public void RequestPath_SingleThread_NoExceptions()
		{
			var algorithm = Substitute.For<IPathFindAlgorithm<INode>>();
			var nodeGrid = Substitute.For<IList<INodeGrid<INode>>>();
			var pathfindManager = new MultithreadedPathfinder<INode>(nodeGrid, algorithm);
			pathfindManager.Start();
			var start = new Vector2(0.5f, 0.5f);
			var end = new Vector2(127.5f, 127.5f);
			var taskCompletionSource = new TaskCompletionSource<bool>();
			Action<CompletedPath> success = pathrequest =>
			{
				taskCompletionSource.SetResult(true);
			};
			pathfindManager.RequestPath(new PathRequest(success, start, end, 1));
			taskCompletionSource.Task.Wait();
		}

		[Test]
		[MaxTime(5000)]
		public void RequestPath_MultipleThreads_NoExceptions()
		{
			var algorithm = Substitute.For<IPathFindAlgorithm<INode>>();
			var nodeGrid = Substitute.For<IList<INodeGrid<INode>>>();
			var pathfindManager = new MultithreadedPathfinder<INode>(nodeGrid, algorithm, 4);
			pathfindManager.Start();
			var start = new Vector2(0.5f, 0.5f);
			var end = new Vector2(127.5f, 127.5f);


			var tasks = new PathRequest[10];
			var taskCompletionSource = new TaskCompletionSource<bool>[tasks.Length];
			var success = new Action<CompletedPath>[tasks.Length];
			for (var i = 0; i < tasks.Length; i++)
			{
				var i1 = i;
				taskCompletionSource[i1] = new TaskCompletionSource<bool>();
				success[i] = request => taskCompletionSource[i1].SetResult(true);
				pathfindManager.RequestPath(new PathRequest(success[i], start, end, 1));
			}
			Task.WaitAll(taskCompletionSource.Select(x => x.Task).ToArray());
		}
	}
}
