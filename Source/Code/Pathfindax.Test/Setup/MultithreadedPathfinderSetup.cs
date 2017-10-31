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
        public static Pathfinder<ISourceNodeNetwork, INodeNetwork> Substitute(int threads)
        {
			return PathfinderFactory.CreatePathfinder(NSubstitute.Substitute.For<ISourceNodeNetwork>(), sourceNodeNetwork =>
            {
	            var nodeGrid = NSubstitute.Substitute.For<INodeNetwork>();
				var algorithm = NSubstitute.Substitute.For<IPathFindAlgorithm<INodeNetwork>>();
	            algorithm.FindPath(null, null).ReturnsForAnyArgs(new List<DefinitionNode>());
	            return PathfinderFactory.CreateRequestProcesser(nodeGrid, algorithm);
            }, threads);
        }
    }
}