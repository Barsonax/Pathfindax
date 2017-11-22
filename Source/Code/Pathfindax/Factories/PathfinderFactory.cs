using System.Collections.Generic;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Factories
{
	public static class PathfinderFactory
	{
		public static PathRequestProcesser<TNodeNetwork, TPath> CreateRequestProcesser<TNodeNetwork, TPath>(TNodeNetwork nodeNetwork, IPathFindAlgorithm<TNodeNetwork, TPath> pathFindAlgorithm)
			where TNodeNetwork : IPathfindNodeNetwork
			where TPath : class, IPath
		{
			return new PathRequestProcesser<TNodeNetwork, TPath>(nodeNetwork, pathFindAlgorithm);
		}

		public static IPathfinder<DefinitionNodeGrid, DijkstraNodeGrid, FlowField> CreateFlowFieldPathfinder(this IPathfindaxManager pathfindaxManager, DefinitionNodeGrid nodeGrid, int maxClearance, int maxCachedFlowFields, int amountOfThreads = 1)
		{
			var pathfinder = pathfindaxManager.CreatePathfinder(nodeGrid, new FlowFieldAlgorithm(maxCachedFlowFields), (definitionNodeGrid, algorithm) =>
			{
				var dijkstraNodeGrid = new DijkstraNodeGrid(definitionNodeGrid, maxClearance);
				return CreateRequestProcesser(dijkstraNodeGrid, algorithm);
			}, amountOfThreads);
			pathfinder.Start();
			return pathfinder;
		}

		public static IPathfinder<DefinitionNodeGrid, DijkstraNodeGrid, PotentialField> CreatePotentialFieldPathfinder(this IPathfindaxManager pathfindaxManager, DefinitionNodeGrid nodeGrid, int maxClearance, int maxCachedFlowFields, int amountOfThreads = 1)
		{
			var pathfinder = pathfindaxManager.CreatePathfinder(nodeGrid, new PotentialFieldAlgorithm(maxCachedFlowFields), (definitionNodeGrid, algorithm) =>
			{
				var dijkstraNodeGrid = new DijkstraNodeGrid(definitionNodeGrid, maxClearance);
				return CreateRequestProcesser(dijkstraNodeGrid, algorithm);
			}, amountOfThreads);
			pathfinder.Start();
			return pathfinder;
		}

		public static IPathfinder<IDefinitionNodeNetwork, IPathfindNodeNetwork<AstarNode>, NodePath> CreateAstarPathfinder(this IPathfindaxManager pathfindaxManager, IDefinitionNodeNetwork nodeNetwork, int maxClearance = -1, int amountOfThreads = 1)
		{
			var pathfinder = pathfindaxManager.CreatePathfinder(nodeNetwork, new AStarAlgorithm(), (definitionNodeNetwork, algorithm) =>
			{
				var nodeGenerators = new List<IPathfindNodeGenerator<AstarNode>>();
				if (definitionNodeNetwork is IDefinitionNodeGrid sourceNodeGrid)
					nodeGenerators.Add(new GridClearanceGenerator(sourceNodeGrid, maxClearance));
				var astarNodeNetwork = new AstarNodeNetwork(definitionNodeNetwork, nodeGenerators.ToArray());
				return CreateRequestProcesser(astarNodeNetwork, algorithm);
			}, amountOfThreads);
			pathfinder.Start();
			return pathfinder;
		}
	}
}
