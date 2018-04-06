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
	public class DijkstraAlgorithmTests
	{
        [Theory, MemberData(nameof(AlgorithmTestCases.OptimalPathTestCases), MemberType = typeof(AlgorithmTestCases))]
        public void FindPath_InitializedNodegrid_PathIsOptimal(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, float expectedPathLength)
		{
			var path = RunDijkstra(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.True(succes);
			var pathLength = path.GetPathLength();
			Assert.Equal(expectedPathLength, pathLength, 1);
		}

        [Theory, MemberData(nameof(AlgorithmTestCases.PossiblePathTestCases), MemberType = typeof(AlgorithmTestCases))]
        public void FindPath_InitializedNodegrid_PathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var path = RunDijkstra(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.True(succes);
		}

        [Theory, MemberData(nameof(AlgorithmTestCases.NoPossiblePathTestCases), MemberType = typeof(AlgorithmTestCases))]
        public void FindPath_InitializedNodegrid_NoPathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var path = RunDijkstra(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.False(succes);
		}

		private WaypointPath RunDijkstra(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, out bool succes)
		{
			var dijkstraAlgorithm = new DijkstraAlgorithm(definitionNodeGrid.NodeCount);

			var start = definitionNodeGrid.NodeGrid.ToIndex(gridStart.X, gridStart.Y);
			var end = definitionNodeGrid.NodeGrid.ToIndex(gridEnd.X, gridEnd.Y);

			var pathfindingNetwork = new DijkstraNodeGrid(definitionNodeGrid, 5);
			var pathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), start, end, PathfindaxCollisionCategory.Cat1);
			return dijkstraAlgorithm.FindPath(pathfindingNetwork, pathRequest, out succes);
		}
	}
}
