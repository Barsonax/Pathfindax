using System.Linq;
using System.Threading;
using NUnit.Framework;
using Pathfindax.PathfindEngine;
using Pathfindax.Test.Setup;

namespace Pathfindax.Test.Tests
{
    [TestFixture]
    public class MultithreadedPathfinderTests
    {
        [Test]
        public void RequestPath_SingleThread_NoExceptions()
        {
            var multithreadedPathfinder = MultithreadedPathfinderSetup.Substitute(1);
            multithreadedPathfinder.Start();

            var pathRequest = new PathRequest(multithreadedPathfinder, null, null);
            pathRequest.WaitHandle.WaitOne(1000);

            Assert.AreEqual(pathRequest.Status, PathRequestStatus.Solved);
        }

        [Test]
        public void RequestPath_MultipleThreads_NoExceptions()
        {
            var multithreadedPathfinder = MultithreadedPathfinderSetup.Substitute(4);
            multithreadedPathfinder.Start();

            var pathRequests = new PathRequest[64];
            for (var i = 0; i < pathRequests.Length; i++)
            {
                pathRequests[i] = new PathRequest(multithreadedPathfinder, null, null);
            }

            WaitHandle.WaitAll(pathRequests.Select(x => x.WaitHandle).ToArray(), 2000);

            foreach (var pathRequest in pathRequests)
            {
                Assert.AreEqual(pathRequest.Status, PathRequestStatus.Solved);
            }
        }
    }
}
