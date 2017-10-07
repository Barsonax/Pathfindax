using Pathfindax.Algorithms;
using Pathfindax.Factories;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Test.Setup
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
            
            return PathfinderFactory.Create(nodeGrids, algorithm);
        }
    }
}