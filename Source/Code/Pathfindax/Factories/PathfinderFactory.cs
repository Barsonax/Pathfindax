using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Factories
{
    public static class PathfinderFactory
    {
        public static MultithreadedPathfinder<T> Create<T>(T[] nodeNetworks, IPathFindAlgorithm<T> algorithm)
            where T : INodeNetwork
        {
            return new MultithreadedPathfinder<T>(nodeNetworks, algorithm);
        }
    }
}
