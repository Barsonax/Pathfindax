using Pathfindax.Algorithms;
using Pathfindax.Factories;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test.Setup
{
    public static class MultithreadedPathfinderSetup
    {
        public static Pathfinder<INodeNetwork, INodeNetwork> Substitute(int threads)
        {
			return PathfinderFactory.CreatePathfinder(NSubstitute.Substitute.For<INodeNetwork>(), sourceNodeNetwork =>
            {
	            var nodeGrid = NSubstitute.Substitute.For<INodeNetwork>();
				var algorithm = NSubstitute.Substitute.For<IPathFindAlgorithm<INodeNetwork>>();
	            return PathfinderFactory.CreateRequestProcesser(nodeGrid, algorithm);
            }, threads);
        }
    }
}