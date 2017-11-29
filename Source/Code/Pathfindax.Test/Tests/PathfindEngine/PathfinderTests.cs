using System.Linq;
using System.Threading;
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
            var multithreadedPathfinder = PathfinderSetup.Create(1);
            multithreadedPathfinder.Start();	        
            var pathRequest = PathRequest.Create(multithreadedPathfinder, null, null);
            pathRequest.WaitHandle.WaitOne(1000);

            Assert.AreEqual(PathRequestStatus.Solved, pathRequest.Status);
        }

        [Test]
        public void RequestPath_MultipleThreads_NoExceptions()
        {
            var multithreadedPathfinder = PathfinderSetup.Create(4);
            multithreadedPathfinder.Start();

            var pathRequests = new PathRequest<IPath>[64];
            for (var i = 0; i < pathRequests.Length; i++)
            {
	            
				pathRequests[i] = PathRequest.Create(multithreadedPathfinder, null, null); ;
            }

            WaitHandle.WaitAll(pathRequests.Select(x => x.WaitHandle).ToArray(), 2000);

            foreach (var pathRequest in pathRequests)
            {
                Assert.AreEqual(PathRequestStatus.Solved, pathRequest.Status);
            }
        }
    }
}
