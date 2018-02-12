using NSubstitute;
using NUnit.Framework;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Test.Setup;

namespace Pathfindax.Test.Tests.PathfindEngine
{
	[TestFixture]
	public class PathRequestTests
	{
		[Test]
		public void Integration_StatusFlowToSolved()
		{
			var manager = new PathfindaxManager(Substitute.For<IUpdatableSynchronizationContext>());
			var pathfinder = PathfinderSetup.Create(manager, 1);
			var request = PathRequest.Create<IPath>(-1, -1);

			Assert.AreEqual(PathRequestStatus.Created, request.Status);
			pathfinder.RequestPath(request);
			Assert.AreEqual(PathRequestStatus.Solving, request.Status);
			pathfinder.Start();
			request.WaitHandle.WaitOne(1000);
			Assert.AreEqual(PathRequestStatus.Solved, request.Status);
		}

		[Test]
		public void Integration_StatusFlowToNoPathFound()
		{
			var manager = new PathfindaxManager(Substitute.For<IUpdatableSynchronizationContext>());
			var pathfinder = PathfinderSetup.Create(manager, 1, false);
			var request = PathRequest.Create<IPath>(-1, -1);

			Assert.AreEqual(PathRequestStatus.Created, request.Status);
			pathfinder.RequestPath(request);
			Assert.AreEqual(PathRequestStatus.Solving, request.Status);
			pathfinder.Start();
			request.WaitHandle.WaitOne(1000);
			Assert.AreEqual(PathRequestStatus.NoPathFound, request.Status);
		}

		[Test]
		public void Integration_AddCallbackAfterPathIsSolved_CallbackIsCalled()
		{
			var manager = new PathfindaxManager(Substitute.For<IUpdatableSynchronizationContext>());
			var pathfinder = PathfinderSetup.Create(manager, 1);
			pathfinder.Start();
			var request = PathRequest.Create(pathfinder, -1, -1);
			request.WaitHandle.WaitOne(1000);

			var done = false;
			request.AddCallback(x => done = true);

			Assert.AreEqual(true, done);
		}

		[Test]
		public void Integration_AddCallbackBeforePathIsSolved_CallbackIsCalled()
		{
			var manager = new PathfindaxManager(new UpdatableSynchronizationContext());
			var pathfinder = PathfinderSetup.Create(manager, 1);
			pathfinder.Start();
			var request = PathRequest.Create<IPath>(-1, -1);

			var done = false;
			request.AddCallback(x => done = true);

			pathfinder.RequestPath(request);
			request.WaitHandle.WaitOne(1000);
			manager.Update(1f); //This should call the callback if the path is finished.
			Assert.AreEqual(true, done);
		}
	}
}
