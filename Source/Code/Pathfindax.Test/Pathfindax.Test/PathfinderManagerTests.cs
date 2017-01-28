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
			var pathfindManager = new PathfinderManager<INode>(algorithm);
			pathfindManager.Start();
			var start = new Vector2(0.5f, 0.5f);
			var end = new Vector2(127.5f, 127.5f);
			var task = pathfindManager.RequestPath(new PathRequest(start, end, 1));
			task.Wait();
		}

		[Test]
		[MaxTime(5000)]
		public void RequestPath_MultipleThreads_NoExceptions()
		{
			var algorithm = Substitute.For<IPathFindAlgorithm<INode>>();
			var pathfindManager = new PathfinderManager<INode>(algorithm, 4);
			pathfindManager.Start();
			var start = new Vector2(0.5f, 0.5f);
			var end = new Vector2(127.5f, 127.5f);

			var tasks = new Task<PathRequest>[10];
			for (int i = 0; i < tasks.Length; i++)
			{
				tasks[i] = pathfindManager.RequestPath(new PathRequest(start, end, 1));
			}
			Task.WaitAll(tasks);
		}
	}
}
