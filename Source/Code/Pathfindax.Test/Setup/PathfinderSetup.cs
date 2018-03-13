using System;
using Duality;
using NSubstitute;
using Pathfindax.Algorithms;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Test.Setup
{
	public static class PathfinderSetup
	{
		public static Pathfinder<IDefinitionNodeNetwork, IPathfindNodeNetwork, IPath> Create(PathfindaxManager manager ,int threads, bool succesTrue = true)
		{
			return manager.CreatePathfinder(Substitute.For<IDefinitionNodeNetwork>(), Substitute.For<IPathFindAlgorithm<IPathfindNodeNetwork, IPath>>(), (definitionNodeNetwork, algorithm) =>
			{
				var nodeGrid = Substitute.For<IPathfindNodeNetwork>();
				var nodeArray = new[] { new DefinitionNode(), };
				algorithm.FindPath(null, null, out var _).ReturnsForAnyArgs(x =>
				{
					x[2] = succesTrue;
					return new WaypointPath(nodeArray, new[] { 0 }, new Transformer(new Vector2(1, 1)));
				});
				return PathfinderFactory.CreateRequestProcesser(nodeGrid, algorithm);
			}, threads);
		}
	}
}