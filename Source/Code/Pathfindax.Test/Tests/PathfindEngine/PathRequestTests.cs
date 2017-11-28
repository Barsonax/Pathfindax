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
			var pathfinder = PathfinderSetup.Create(1);
			var request = new PathRequest<IPath>(Substitute.For<IDefinitionNode>(), Substitute.For<IDefinitionNode>());

			Assert.AreEqual(PathRequestStatus.Created, request.Status);
			request.StartSolvePath(pathfinder);
			Assert.AreEqual(PathRequestStatus.Solving, request.Status);
			pathfinder.Start();
			request.WaitHandle.WaitOne(1000);
			Assert.AreEqual(PathRequestStatus.Solved, request.Status);
		}

		[Test]
		public void Integration_StatusFlowToNoPathFound()
		{
			var pathfinder = PathfinderSetup.Create(1, false);
			var request = new PathRequest<IPath>(Substitute.For<IDefinitionNode>(), Substitute.For<IDefinitionNode>());

			Assert.AreEqual(PathRequestStatus.Created, request.Status);
			request.StartSolvePath(pathfinder);
			Assert.AreEqual(PathRequestStatus.Solving, request.Status);
			pathfinder.Start();
			request.WaitHandle.WaitOne(1000);
			Assert.AreEqual(PathRequestStatus.NoPathFound, request.Status);
		}

		[Test]
		public void Integration_AddCallbackAfterPathIsSolved_CallbackIsCalled()
		{
			var pathfinder = PathfinderSetup.Create(1);
			pathfinder.Start();
			var request = PathRequest.Create(pathfinder, Substitute.For<IDefinitionNode>(), Substitute.For<IDefinitionNode>());
			request.WaitHandle.WaitOne(1000);

			var done = false;
			request.AddCallback(x => done = true);

			Assert.AreEqual(true, done);
		}

		[Test]
		public void Integration_AddCallbackBeforePathIsSolved_CallbackIsCalled()
		{
			var pathfinder = PathfinderSetup.Create(1);
			pathfinder.Start();
			var request = PathRequest.Create<IPath>(Substitute.For<IDefinitionNode>(), Substitute.For<IDefinitionNode>());	
			
			var done = false;
			request.AddCallback(x => done = true);

			request.StartSolvePath(pathfinder);
			request.WaitHandle.WaitOne(1000);
			pathfinder.ProcessPaths(); //This should call the callback if the path is finished.
			Assert.AreEqual(true, done);
		}
	}
}
