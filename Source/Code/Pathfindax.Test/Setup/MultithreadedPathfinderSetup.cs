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
	public static class MultithreadedPathfinderSetup
	{
		public static Pathfinder<IDefinitionNodeNetwork, IPathfindNodeNetwork, IPath> Create(int threads)
		{
			return PathfinderFactory.CreatePathfinder(Substitute.For<IPathfindaxManager>(), Substitute.For<IDefinitionNodeNetwork>(), Substitute.For<IPathFindAlgorithm<IPathfindNodeNetwork, IPath>>(), (definitionNodeNetwork, algorithm) =>
			{
				var nodeGrid = Substitute.For<IPathfindNodeNetwork>();
				algorithm.FindPath(null, null).ReturnsForAnyArgs(new NodePath(new[] { new DefinitionNode(0, Vector2.Zero), }));
				return PathfinderFactory.CreateRequestProcesser(nodeGrid, algorithm);
			}, threads);
		}
	}
}