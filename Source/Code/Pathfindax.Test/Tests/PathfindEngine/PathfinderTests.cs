using System.Linq;
using System.Threading;
using NSubstitute;
using NUnit.Framework;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Test.Setup;

namespace Pathfindax.Test.Tests.PathfindEngine
{
	[TestFixture]
	public class MultithreadedPathfinderTests
	{
		[Test]
		public void RequestPath_SingleThread_NoExceptions()
		{
			var manager = new PathfindaxManager(Substitute.For<IUpdatableSynchronizationContext>());
			var multithreadedPathfinder = PathfinderSetup.Create(manager, 1);
			multithreadedPathfinder.Start();
			var pathRequest = PathRequest.Create(multithreadedPathfinder, -1, -1);
			pathRequest.WaitHandle.WaitOne(1000);

			Assert.AreEqual(PathRequestStatus.Solved, pathRequest.Status);
		}

		[Test]
		public void RequestPath_MultipleThreads_NoExceptions()
		{
			var manager = new PathfindaxManager(Substitute.For<IUpdatableSynchronizationContext>());
			var multithreadedPathfinder = PathfinderSetup.Create(manager, 4);
			multithreadedPathfinder.Start();

			var pathRequests = new PathRequest<IPath>[64];
			for (var i = 0; i < pathRequests.Length; i++)
			{

				pathRequests[i] = PathRequest.Create(multithreadedPathfinder, -1, -1); ;
			}

			WaitHandle.WaitAll(pathRequests.Select(x => x.WaitHandle).ToArray(), 2000);

			foreach (var pathRequest in pathRequests)
			{
				Assert.AreEqual(PathRequestStatus.Solved, pathRequest.Status);
			}
		}
	}
}
