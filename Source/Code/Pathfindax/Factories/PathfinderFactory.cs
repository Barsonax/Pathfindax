using System;
using System.Collections.Generic;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Factories
{
	public static class PathfinderFactory
	{
		public static Pathfinder<DefinitionNodeGrid, DijkstraNodeGrid, FlowField> CreateFlowFieldPathfinder(string pathfinderId, DefinitionNodeGrid nodeGrid, int maxClearance, int maxCachedFlowFields, int amountOfThreads)
		{
			var pathfinder = CreatePathfinder(nodeGrid, new FlowFieldAlgorithm(maxCachedFlowFields), (definitionNodeGrid, algorithm) =>
			{
				var dijkstraNodeGrid = new DijkstraNodeGrid(definitionNodeGrid, maxClearance);
				return CreateRequestProcesser(dijkstraNodeGrid, algorithm);
			}, pathfinderId, amountOfThreads);
			pathfinder.Start();
			return pathfinder;
		}

		public static Pathfinder<DefinitionNodeGrid, DijkstraNodeGrid, PotentialField> CreatePotentialFieldPathfinder(string pathfinderId, DefinitionNodeGrid nodeGrid, int maxClearance, int maxCachedFlowFields, int amountOfThreads)
		{
			var pathfinder = CreatePathfinder(nodeGrid, new PotentialFieldAlgorithm(maxCachedFlowFields), (definitionNodeGrid, algorithm) =>
			{
				var dijkstraNodeGrid = new DijkstraNodeGrid(definitionNodeGrid, maxClearance);
				return CreateRequestProcesser(dijkstraNodeGrid, algorithm);
			}, pathfinderId, amountOfThreads);
			pathfinder.Start();
			return pathfinder;
		}

		public static Pathfinder<IDefinitionNodeNetwork, IPathfindNodeNetwork<AstarNode>, NodePath> CreateAstarPathfinder(string pathfinderId, IDefinitionNodeNetwork nodeNetwork, int maxClearance, int amountOfThreads)
		{
			var pathfinder = CreatePathfinder(nodeNetwork, new AStarAlgorithm(), (definitionNodeNetwork, algorithm) =>
			{
				var nodeGenerators = new List<IPathfindNodeGenerator<AstarNode>>();
				if (definitionNodeNetwork is IDefinitionNodeGrid sourceNodeGrid)
					nodeGenerators.Add(new GridClearanceGenerator(sourceNodeGrid, maxClearance));
				var astarNodeNetwork = new AstarNodeNetwork(definitionNodeNetwork, nodeGenerators.ToArray());
				return CreateRequestProcesser(astarNodeNetwork, algorithm);
			}, pathfinderId, amountOfThreads);
			pathfinder.Start();
			return pathfinder;
		}

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
