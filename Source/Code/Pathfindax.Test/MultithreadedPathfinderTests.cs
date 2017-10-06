using System;
using System.Diagnostics;
using System.Linq;
using NUnit.Framework;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test
{
    [TestFixture]
    public class MultithreadedPathfinderTests
    {
        [Test]
        public void RequestPath_SingleThread_NoExceptions()
        {
            var multithreadedPathfinder = MultithreadedPathfinderSetup.Substitute(1);
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
            var multithreadedPathfinder = MultithreadedPathfinderSetup.Substitute(4);
            multithreadedPathfinder.Start();

            var pathRequests = new PathRequest[100];
            for (var i = 0; i < pathRequests.Length; i++)
            {
                pathRequests[i] = new PathRequest(null, null);
                pathRequests[i].StartSolvePath(multithreadedPathfinder);
            }

            var stopWatch = Stopwatch.StartNew();
            while (pathRequests.Any(x => x.Status == PathRequestStatus.Solving))
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
