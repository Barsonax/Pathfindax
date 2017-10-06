using System.Diagnostics;
using NSubstitute;
using NUnit.Framework;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test
{
    [TestFixture]
    public class PathRequestTests
    {
        [Test]
        public void Integration_StatusFlowToSolved()
        {
            var pathfinder = MultithreadedPathfinderSetup.Substitute(1);
            var request = new PathRequest(Substitute.For<ISourceNode>(), Substitute.For<ISourceNode>());

            Assert.AreEqual(request.Status, PathRequestStatus.Created);
            request.StartSolvePath(pathfinder);
            Assert.AreEqual(request.Status, PathRequestStatus.Solving);
            pathfinder.Start();
            var watch = Stopwatch.StartNew();
            while (request.Status == PathRequestStatus.Solving && watch.ElapsedMilliseconds < 1000) { }
            Assert.AreEqual(request.Status, PathRequestStatus.Solved);
        }

        [Test]
        public void Foo()
        {
            var pathfinder = MultithreadedPathfinderSetup.Substitute(1);
            pathfinder.Start();
            var request = new PathRequest(Substitute.For<ISourceNode>(), Substitute.For<ISourceNode>());
            request.StartSolvePath(pathfinder);

        }
    }
}
