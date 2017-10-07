using NSubstitute;
using NUnit.Framework;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Test.Setup;

namespace Pathfindax.Test.Tests
{
    [TestFixture]
    public class PathRequestTests
    {
        [Test]
        public void Integration_StatusFlowToSolved()
        {
            var pathfinder = MultithreadedPathfinderSetup.Substitute(1);
            var request = new PathRequest(Substitute.For<ISourceNode>(), Substitute.For<ISourceNode>());

            Assert.AreEqual(PathRequestStatus.Created, request.Status);
            request.StartSolvePath(pathfinder);
            Assert.AreEqual(PathRequestStatus.Solving, request.Status);
            pathfinder.Start();
            request.WaitHandle.WaitOne(1000);
            Assert.AreEqual(PathRequestStatus.Solved, request.Status);
        }

        [Test]
        public void Integration_AddCallbackAfterPathIsSolved_CallbackIsCalled()
        {
            var pathfinder = MultithreadedPathfinderSetup.Substitute(1);
            pathfinder.Start();
            var request = new PathRequest(pathfinder, Substitute.For<ISourceNode>(), Substitute.For<ISourceNode>());
            request.WaitHandle.WaitOne(1000);
            bool done = false;
            request.AddCallback(x =>
            {
                done = true;
            });
            Assert.AreEqual(true, done);
        }
    }
}
