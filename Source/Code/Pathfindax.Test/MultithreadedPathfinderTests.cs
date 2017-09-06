using System;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using NSubstitute;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test
{
    [TestFixture]
    public class MultithreadedPathfinderTests
    {
        private MultithreadedPathfinder<INodeGrid<AstarGridNode>> SetupMultithreadedPathfinder(int threads)
        {
            var algorithm = Substitute.For<IPathFindAlgorithm<INodeGrid<AstarGridNode>>>();
            var nodeGrid = Substitute.For<INodeGrid<AstarGridNode>>();
            return new MultithreadedPathfinder<INodeGrid<AstarGridNode>>(new[] { nodeGrid }, algorithm);
        }

        [Test]
        public void RequestPath_SingleThread_NoExceptions()
        {
            var multithreadedPathfinder = SetupMultithreadedPathfinder(1);
            multithreadedPathfinder.Start();

            var pathRequest = new PathRequest(null, null);
            pathRequest.StartSolvePath(multithreadedPathfinder);

            var stopWatch = Stopwatch.StartNew();
            while (pathRequest.Status == PathRequestStatus.Solving)
            {
                if (stopWatch.ElapsedMilliseconds > 2000) throw new TimeoutException();
            }

            Assert.AreEqual(pathRequest.Status, PathRequestStatus.Solved);
        }

        [Test]
        public void RequestPath_MultipleThreads_NoExceptions()
        {
            var multithreadedPathfinder = SetupMultithreadedPathfinder(4);
            multithreadedPathfinder.Start();

            var pathRequests = new PathRequest[100];
            for (var i = 0; i < pathRequests.Length; i++)
            {
                pathRequests[i] = new PathRequest(null, null);
                pathRequests[i].StartSolvePath(multithreadedPathfinder);
            }

            var stopWatch = Stopwatch.StartNew();
            while (!pathRequests.All(x => x.Status != PathRequestStatus.Solving))
            {
                if (stopWatch.ElapsedMilliseconds > 2000) throw new TimeoutException();
            }

            foreach (var pathRequest in pathRequests)
            {
                Assert.AreEqual(pathRequest.Status, PathRequestStatus.Solved);
            }
        }
    }
}
