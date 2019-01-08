using NSubstitute;
using Xunit;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Test.Setup;
using Pathfindax.Threading;

namespace Pathfindax.Test.Tests.PathfindEngine
{
	
	public class PathRequestTests
	{
		[Fact]
		public void Integration_StatusFlowToSolved()
		{
			var manager = new PathfindaxManager(Substitute.For<IUpdatableSynchronizationContext>());
			var pathfinder = PathfinderSetup.Create(manager, 1);
			var request = PathRequest.Create<IPath>(-1, -1);

			Assert.Equal(PathRequestStatus.Created, request.Status);
			pathfinder.RequestPath(request);
			Assert.Equal(PathRequestStatus.Solving, request.Status);
			pathfinder.Start();
			request.WaitHandle.WaitOne(1000);
			Assert.Equal(PathRequestStatus.Solved, request.Status);
		}

		[Fact]
		public void Integration_StatusFlowToNoPathFound()
		{
			var manager = new PathfindaxManager(Substitute.For<IUpdatableSynchronizationContext>());
			var pathfinder = PathfinderSetup.Create(manager, 1, false);
			var request = PathRequest.Create<IPath>(-1, -1);

			Assert.Equal(PathRequestStatus.Created, request.Status);
			pathfinder.RequestPath(request);
			Assert.Equal(PathRequestStatus.Solving, request.Status);
			pathfinder.Start();
			request.WaitHandle.WaitOne(1000);
			Assert.Equal(PathRequestStatus.NoPathFound, request.Status);
		}

		[Fact]
		public void Integration_AddCallbackAfterPathIsSolved_CallbackIsCalled()
		{
			var manager = new PathfindaxManager(Substitute.For<IUpdatableSynchronizationContext>());
			var pathfinder = PathfinderSetup.Create(manager, 1);
			pathfinder.Start();
			var request = PathRequest.Create(pathfinder, -1, -1);
			request.WaitHandle.WaitOne(1000);

			var done = false;
			request.AddCallback(x => done = true);

			Assert.True(done);
		}

		[Fact]
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
			Assert.True(done);
		}
	}
}
