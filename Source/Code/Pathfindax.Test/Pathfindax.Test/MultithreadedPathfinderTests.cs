using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
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
	public class MultithreadedPathfinderTests
	{
		private MultithreadedPathfinder<INode> SetupMultithreadedPathfinder(int threads)
		{
			var algorithm = Substitute.For<IPathFindAlgorithm<INode>>();
			var nodeGrid = Substitute.For<IList<INodeGrid<INode>>>();
			return new MultithreadedPathfinder<INode>(nodeGrid, algorithm, threads);
		}

		[Test]
		public void RequestPath_SingleThread_NoExceptions()
		{
			var pathfindManager = SetupMultithreadedPathfinder(1);

			pathfindManager.Start();
			var start = new Vector2(0.5f, 0.5f);
			var end = new Vector2(127.5f, 127.5f);
			var taskCompletionSource = new TaskCompletionSource<bool>();
			Action<CompletedPath> success = pathrequest =>
			{
				taskCompletionSource.SetResult(true);
			};
			pathfindManager.RequestPath(new PathRequest(success, start, end, 1));
			var stopWatch = new Stopwatch();
			stopWatch.Start();
			while (!taskCompletionSource.Task.IsCompleted)
			{
				Thread.Sleep(10);
				if(stopWatch.ElapsedMilliseconds > 2000) throw new TimeoutException();
			}
			Assert.AreEqual(taskCompletionSource.Task.Result, true);
		}

		[Test]
		public void RequestPath_MultipleThreads_NoExceptions()
		{
			var pathfindManager = SetupMultithreadedPathfinder(4);
			pathfindManager.Start();
			var start = new Vector2(0.5f, 0.5f);
			var end = new Vector2(127.5f, 127.5f);

			var pathRequests = new PathRequest[10];
			var taskCompletionSources = new TaskCompletionSource<bool>[pathRequests.Length];
			var success = new Action<CompletedPath>[pathRequests.Length];
			for (var i = 0; i < pathRequests.Length; i++)
			{
				var i1 = i;
				taskCompletionSources[i1] = new TaskCompletionSource<bool>();
				success[i] = request => taskCompletionSources[i1].SetResult(true);
				pathfindManager.RequestPath(new PathRequest(success[i], start, end, 1));
			}
			var tasks = taskCompletionSources.Select(x => x.Task).ToList();
			var stopWatch = new Stopwatch();
			stopWatch.Start();
			while (!tasks.All(x => x.IsCompleted))
			{
				Thread.Sleep(10);
				if (stopWatch.ElapsedMilliseconds > 2000) throw new TimeoutException();
			}
			foreach (var taskCompletionSource in taskCompletionSources)
			{
				Assert.AreEqual(taskCompletionSource.Task.Result, true);
			}
		}
	}
}
