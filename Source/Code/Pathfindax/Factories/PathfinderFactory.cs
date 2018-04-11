using System.Collections.Generic;
using Pathfindax.Algorithms;
using Pathfindax.Collections;
using Pathfindax.Collections.Interfaces;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Factories
{
	public static class PathfinderFactory
	{
		public static PathRequestProcesser<TThreadNodeNetwork, TPath> CreateRequestProcesser<TThreadNodeNetwork, TPath>(TThreadNodeNetwork nodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath> pathFindAlgorithm, ICache<IPathRequest, TPath> cache)
			where TThreadNodeNetwork : IPathfindNodeNetwork
			where TPath : class, IPath
		{
			return new PathRequestProcesser<TThreadNodeNetwork, TPath>(nodeNetwork, pathFindAlgorithm, cache);
		}

		public static IPathfinder<DefinitionNodeGrid, DijkstraNodeGrid, FlowField> CreateFlowFieldPathfinder(this IPathfindaxManager pathfindaxManager, DefinitionNodeGrid nodeGrid, int maxClearance, int maxCachedFlowFields, int amountOfThreads = 1)
		{
			var pathfinder = pathfindaxManager.CreatePathfinder(nodeGrid, new FlowFieldAlgorithm(nodeGrid.NodeCount), (definitionNodeGrid, algorithm, cache) =>
			{
				var dijkstraNodeGrid = new DijkstraNodeGrid(definitionNodeGrid, maxClearance);
				return CreateRequestProcesser(dijkstraNodeGrid, algorithm, cache);
			},
			maxCachedFlowFields > 0 ? new ConcurrentCache<IPathRequest, FlowField>(maxCachedFlowFields, new SingleSourcePathRequestComparer()) : null, 
			amountOfThreads);
			pathfinder.Start();
			return pathfinder;
		}

		public static IPathfinder<DefinitionNodeGrid, DijkstraNodeGrid, PotentialField> CreatePotentialFieldPathfinder(this IPathfindaxManager pathfindaxManager, DefinitionNodeGrid nodeGrid, int maxClearance, int maxCachedFlowFields, int amountOfThreads = 1)
		{
			var pathfinder = pathfindaxManager.CreatePathfinder(nodeGrid, new PotentialFieldAlgorithm(nodeGrid.NodeCount), (definitionNodeGrid, algorithm, cache) =>
			{
				var dijkstraNodeGrid = new DijkstraNodeGrid(definitionNodeGrid, maxClearance);
				return CreateRequestProcesser(dijkstraNodeGrid, algorithm, cache);
			},
			maxCachedFlowFields > 0 ? new ConcurrentCache<IPathRequest, PotentialField>(maxCachedFlowFields, new SingleSourcePathRequestComparer()) : null, 
			amountOfThreads);
			pathfinder.Start();
			return pathfinder;
		}

		public static IPathfinder<IDefinitionNodeNetwork, IPathfindNodeNetwork<AstarNode>, WaypointPath> CreateAstarPathfinder(this IPathfindaxManager pathfindaxManager, IDefinitionNodeNetwork nodeNetwork, IDistanceHeuristic _heuristic, int maxClearance = -1, int amountOfThreads = 1)
		{
			var pathfinder = pathfindaxManager.CreatePathfinder(nodeNetwork, new AStarAlgorithm(nodeNetwork.NodeCount, _heuristic), (definitionNodeNetwork, algorithm, cache) =>
			{
				var nodeGenerators = new List<IPathfindNodeGenerator<AstarNode>>();
				if (definitionNodeNetwork is IDefinitionNodeGrid sourceNodeGrid)
					nodeGenerators.Add(new BrushfireClearanceGenerator(sourceNodeGrid, maxClearance));
				var astarNodeNetwork = new AstarNodeNetwork(definitionNodeNetwork, nodeGenerators.ToArray());
				return CreateRequestProcesser(astarNodeNetwork, algorithm, cache);
			}, null, amountOfThreads);
			pathfinder.Start();
			return pathfinder;
		}
	}
}
