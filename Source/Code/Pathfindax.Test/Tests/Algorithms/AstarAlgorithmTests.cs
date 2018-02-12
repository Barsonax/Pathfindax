using System.Collections;
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
		[Test, TestCaseSource(typeof(AstarAlgorithmTests), nameof(FindPathTestCases))]
		public void FindPath_InitializedNodegrid_PathIsOptimal(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, float expectedPathLength)
		{
			var aStarAlgorithm = new AStarAlgorithm(definitionNodeGrid.NodeCount, new EuclideanDistance());

			var start = definitionNodeGrid.NodeGrid.ToIndex(gridStart.X, gridStart.Y);
			var end = definitionNodeGrid.NodeGrid.ToIndex(gridEnd.X, gridEnd.Y);

			var pathfindingNetwork = new AstarNodeNetwork(definitionNodeGrid, new BrushfireClearanceGenerator(definitionNodeGrid, 5));
			var pathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>() ,start, end, PathfindaxCollisionCategory.Cat1);
			var path = aStarAlgorithm.FindPath(pathfindingNetwork, pathRequest, out var _);
			var pathLength = path.GetPathLength();
			Assert.AreEqual(expectedPathLength, pathLength, 0.1f);
		}

		public static TestCaseData GenerateAstarTestCase(int width, int height, Point2 start, Point2 end, float expectedPathLength, Point2[] blockedNodes = null)
		{
			var grid = new DefinitionNodeGrid(GenerateNodeGridConnections.All, width, height, new Vector2(1, 1));
			if (blockedNodes != null)
			{
				foreach (var blockedNode in blockedNodes)
				{
					grid.SetNodeCollision(blockedNode.X, blockedNode.Y, PathfindaxCollisionCategory.Cat1);
				}
			}

			var description = blockedNodes != null ?
				$"Path from {start} to {end} on a {width} by {height} grid with blocked nodes {string.Join(", ", blockedNodes)}" :
				$"Path from {start} to {end} on a {width} by {height} grid";
			return new TestCaseData(grid, start, end, expectedPathLength).SetName(description);
		}

		public static IEnumerable FindPathTestCases
		{
			get
			{
				yield return GenerateAstarTestCase(11, 11, new Point2(0, 0), new Point2(10, 0), 10f);
				yield return GenerateAstarTestCase(7, 7, new Point2(0, 0), new Point2(6, 6), 8.49f);
				yield return GenerateAstarTestCase(7, 7, new Point2(0, 0), new Point2(6, 3), 7.24f);
				yield return GenerateAstarTestCase(4, 3, new Point2(3, 0), new Point2(0, 2), 3.83f);
				yield return GenerateAstarTestCase(11, 11, new Point2(0, 0), new Point2(10, 0), 10.83f, new[] { new Point2(5, 0) });
				yield return GenerateAstarTestCase(11, 11, new Point2(0, 0), new Point2(10, 0), 11.66f, new[] { new Point2(5, 0), new Point2(5, 1) });
				yield return GenerateAstarTestCase(11, 11, new Point2(0, 0), new Point2(10, 0), 13.07f, new[] { new Point2(5, 0), new Point2(5, 1), new Point2(5, 2), new Point2(2, 2), new Point2(3, 2), new Point2(3, 1) });
				yield return GenerateAstarTestCase(11, 11, new Point2(0, 0), new Point2(7, 2), 9.24f, new[] { new Point2(5, 0), new Point2(5, 1), new Point2(5, 2), new Point2(2, 2), new Point2(3, 2), new Point2(3, 1) });
			}
		}
	}
}
