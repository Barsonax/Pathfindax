using Duality;
using NSubstitute;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Test.Tests.Algorithms
{
	[TestFixture]
	public class DijkstraAlgorithmTests
	{
		[Test, TestCaseSource(typeof(AlgorithmTestCases), nameof(AlgorithmTestCases.OptimalPathTestCases))]
		public void FindPath_InitializedNodegrid_PathIsOptimal(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, float expectedPathLength)
		{
			var path = RunDijkstra(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.AreEqual(true, succes);
			var pathLength = path.GetPathLength();
			Assert.AreEqual(expectedPathLength, pathLength, 0.1f);
		}

		[Test, TestCaseSource(typeof(AlgorithmTestCases), nameof(AlgorithmTestCases.PossiblePathTestCases))]
		public void FindPath_InitializedNodegrid_PathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var path = RunDijkstra(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.AreEqual(true, succes);
		}

		[Test, TestCaseSource(typeof(AlgorithmTestCases), nameof(AlgorithmTestCases.NoPossiblePathTestCases))]
		public void FindPath_InitializedNodegrid_NoPathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var path = RunDijkstra(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.AreEqual(false, succes);
		}

		private NodePath RunDijkstra(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, out bool succes)
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
