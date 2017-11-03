using System.Collections.Generic;
using NSubstitute;
using Pathfindax.Algorithms;
using Pathfindax.Factories;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test.Setup
{
    public static class MultithreadedPathfinderSetup
    {
        public static Pathfinder<ISourceNodeNetwork, IPathfindNodeNetwork> Substitute(int threads)
        {
			return PathfinderFactory.CreatePathfinder(NSubstitute.Substitute.For<ISourceNodeNetwork>(), sourceNodeNetwork =>
            {
	            var nodeGrid = NSubstitute.Substitute.For<IPathfindNodeNetwork>();
				var algorithm = NSubstitute.Substitute.For<IPathFindAlgorithm<IPathfindNodeNetwork>>();
	            algorithm.FindPath(null, null).ReturnsForAnyArgs(new List<DefinitionNode>());
	            return PathfinderFactory.CreateRequestProcesser(nodeGrid, algorithm);
            }, threads);
        }
    }
}