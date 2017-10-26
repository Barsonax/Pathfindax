using System;
using System.Collections.Generic;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Factories
{
    public static class PathfinderFactory
    {
        public static Pathfinder<TNodeNetwork, T> CreatePathfinder<TNodeNetwork, T>(TNodeNetwork sourceNodeNetwork, Func<TNodeNetwork, PathRequestProcesser<T>> processerConstructor, int threads = 1)
            where TNodeNetwork : INodeNetwork
			where T : INodeNetwork
        {
            return new Pathfinder<TNodeNetwork, T>(sourceNodeNetwork, processerConstructor, threads);
        }

	    public static PathRequestProcesser<TNodeNetwork> CreateRequestProcesser<TNodeNetwork>(TNodeNetwork nodeNetwork, IPathFindAlgorithm<TNodeNetwork> pathFindAlgorithm, IList<IPathPostProcess> pathPostProcesses = null)
		    where TNodeNetwork : INodeNetwork
	    {
		    return new PathRequestProcesser<TNodeNetwork>(nodeNetwork, pathFindAlgorithm, pathPostProcesses);
	    }
	}
}
