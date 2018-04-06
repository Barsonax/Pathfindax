using Duality;
using NSubstitute;
using Xunit;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Test.Tests.Algorithms
{
	public class FlowFieldAlgoritmTests
	{
        [Theory, MemberData(nameof(AlgorithmTestCases.PossiblePathTestCases), MemberType = typeof(AlgorithmTestCases))]
        public void FindPath_InitializedNodegrid_PathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var potentialField = RunFlowField(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.True(succes);
		}

        [Theory, MemberData(nameof(AlgorithmTestCases.NoPossiblePathTestCases), MemberType = typeof(AlgorithmTestCases))]
        public void FindPath_InitializedNodegrid_NoPathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var runFlowField = RunFlowField(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.False(succes);
		}

		private FlowField RunFlowField(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, out bool succes)
		{
			var potentialFieldAlgorithm = new FlowFieldAlgorithm(0, definitionNodeGrid.NodeCount);

			var start = definitionNodeGrid.NodeGrid.ToIndex(gridStart.X, gridStart.Y);
			var end = definitionNodeGrid.NodeGrid.ToIndex(gridEnd.X, gridEnd.Y);

			var pathfindingNetwork = new DijkstraNodeGrid(definitionNodeGrid, 5);
			var pathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), start, end, PathfindaxCollisionCategory.Cat1);
			return potentialFieldAlgorithm.FindPath(pathfindingNetwork, pathRequest, out succes);
		}
	}
}
