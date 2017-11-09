using System;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Factories
{
	public static class PathfinderFactory
	{
		public static Pathfinder<TSourceNodeNetwork, TThreadNodeNetwork> CreatePathfinder<TSourceNodeNetwork, TThreadNodeNetwork>(TSourceNodeNetwork sourceNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork> pathFindAlgorithm, Func<TSourceNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork>, PathRequestProcesser<TThreadNodeNetwork>> processerConstructor, int threads = 1)
			where TSourceNodeNetwork : IDefinitionNodeNetwork
			where TThreadNodeNetwork : IPathfindNodeNetwork
		{
			return new Pathfinder<TSourceNodeNetwork, TThreadNodeNetwork>(sourceNodeNetwork, pathFindAlgorithm, processerConstructor, threads);
		}

		public static PathRequestProcesser<TNodeNetwork> CreateRequestProcesser<TNodeNetwork>(TNodeNetwork nodeNetwork, IPathFindAlgorithm<TNodeNetwork> pathFindAlgorithm)
			where TNodeNetwork : IPathfindNodeNetwork
		{
			return new PathRequestProcesser<TNodeNetwork>(nodeNetwork, pathFindAlgorithm);
		}
	}
}
