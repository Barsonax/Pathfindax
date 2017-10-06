using NSubstitute;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test
{
    public static class MultithreadedPathfinderSetup
    {
        public static MultithreadedPathfinder<INodeNetwork> Substitute(int threads)
        {
            var algorithm = NSubstitute.Substitute.For<IPathFindAlgorithm<INodeNetwork>>();
            var nodeGrids = new INodeNetwork[threads];
            for (int i = 0; i < nodeGrids.Length; i++)
            {
                nodeGrids[i] = NSubstitute.Substitute.For<INodeNetwork>();
            }
            return new MultithreadedPathfinder<INodeNetwork>(nodeGrids, algorithm);
        }
    }
}