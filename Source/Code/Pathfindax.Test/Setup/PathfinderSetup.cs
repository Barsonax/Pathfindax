using Duality;
using NSubstitute;
using Pathfindax.Algorithms;
using Pathfindax.Collections.Interfaces;
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
			return manager.CreatePathfinder(Substitute.For<IDefinitionNodeNetwork>(), Substitute.For<IPathFindAlgorithm<IPathfindNodeNetwork, IPath>>(), (definitionNodeNetwork, algorithm, cache) =>
			{
				var nodeGrid = Substitute.For<IPathfindNodeNetwork>();
				var nodeArray = new[] { new DefinitionNode(), };
				algorithm.FindPath(null, null).ReturnsForAnyArgs(x =>
				{
					if (succesTrue)
					{
						return new WaypointPath(nodeArray, new[] { 0 }, new Transformer(new Vector2(1, 1)));
					}
					else
					{
						return null;
					}
				});

				algorithm.ValidatePath(null, null, null).ReturnsForAnyArgs(x =>
				{
					return true;
				});
				return PathfinderFactory.CreateRequestProcesser(nodeGrid, algorithm, cache);
			}, Substitute.For<ICache<IPathRequest, IPath>>(), threads);
		}
	}
}