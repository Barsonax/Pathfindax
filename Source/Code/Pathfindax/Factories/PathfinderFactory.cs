using System;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Factories
{
	public static class PathfinderFactory
	{
		public static Pathfinder<TSourceNodeNetwork, TThreadNodeNetwork, TPath> CreatePathfinder<TSourceNodeNetwork, TThreadNodeNetwork, TPath>(TSourceNodeNetwork sourceNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath> pathFindAlgorithm, Func<TSourceNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath>, PathRequestProcesser<TThreadNodeNetwork, TPath>> processerConstructor, string key, int threads = 1)
			where TSourceNodeNetwork : IDefinitionNodeNetwork
			where TThreadNodeNetwork : IPathfindNodeNetwork
			where TPath : class, IPath
		{
			var pathfinder = new Pathfinder<TSourceNodeNetwork, TThreadNodeNetwork, TPath>(sourceNodeNetwork, pathFindAlgorithm, processerConstructor, threads);
			PathfindaxEngine.Register(pathfinder);
			return pathfinder;
		}

		public static PathRequestProcesser<TNodeNetwork, TPath> CreateRequestProcesser<TNodeNetwork, TPath>(TNodeNetwork nodeNetwork, IPathFindAlgorithm<TNodeNetwork, TPath> pathFindAlgorithm)
			where TNodeNetwork : IPathfindNodeNetwork
			where TPath : class, IPath
		{
			return new PathRequestProcesser<TNodeNetwork, TPath>(nodeNetwork, pathFindAlgorithm);
		}
	}
}
