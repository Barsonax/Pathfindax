using System.IO;
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
	public class AstarAlgorithmTests
	{
		[Test, TestCaseSource(typeof(AlgorithmTestCases), nameof(AlgorithmTestCases.OptimalPathTestCases))]
		public void FindPath_InitializedNodegrid_PathIsOptimal(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, float expectedPathLength)
		{
			var path = RunAstar(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.AreEqual(true, succes);
			var pathLength = path.GetPathLength();
			Assert.AreEqual(expectedPathLength, pathLength, 0.1f);
		}

		[Test, TestCaseSource(typeof(AlgorithmTestCases), nameof(AlgorithmTestCases.PossiblePathTestCases))]
		public void FindPath_InitializedNodegrid_PathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var path = RunAstar(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.AreEqual(true, succes);
		}

		[Test, TestCaseSource(typeof(AlgorithmTestCases), nameof(AlgorithmTestCases.NoPossiblePathTestCases))]
		public void FindPath_InitializedNodegrid_NoPathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var path = RunAstar(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.AreEqual(false, succes);
		}

		private WaypointPath RunAstar(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, out bool succes)
		{
			var aStarAlgorithm = new AStarAlgorithm(definitionNodeGrid.NodeCount, new EuclideanDistance());

			var start = definitionNodeGrid.NodeGrid.ToIndex(gridStart.X, gridStart.Y);
			var end = definitionNodeGrid.NodeGrid.ToIndex(gridEnd.X, gridEnd.Y);

			var pathfindingNetwork = new AstarNodeNetwork(definitionNodeGrid, new BrushfireClearanceGenerator(definitionNodeGrid, 5));
			var pathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), start, end, PathfindaxCollisionCategory.Cat1);
			return aStarAlgorithm.FindPath(pathfindingNetwork, pathRequest, out succes);
		}
	}
}
