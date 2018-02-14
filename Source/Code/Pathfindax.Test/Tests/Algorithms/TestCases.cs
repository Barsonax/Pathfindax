using System.Collections;
using Duality;
using NUnit.Framework;
using Pathfindax.Collections;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Test.Tests.Algorithms
{
	public class TestCases
	{
		public static TestCaseData GenerateOptimalPathTestCase(int width, int height, Point2 start, Point2 end, float expectedPathLength, Point2[] blockedNodes = null)
		{
			var factory = new DefinitionNodeGridFactory();
			var nodeGrid = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, width, height);
			var grid = new DefinitionNodeGrid(nodeGrid, new Vector2(1, 1));
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

		public static IEnumerable OptimalPathTestCases
		{
			get
			{
				yield return GenerateOptimalPathTestCase(11, 11, new Point2(0, 0), new Point2(10, 0), 10f);
				yield return GenerateOptimalPathTestCase(7, 7, new Point2(0, 0), new Point2(6, 6), 8.49f);
				yield return GenerateOptimalPathTestCase(7, 7, new Point2(0, 0), new Point2(6, 3), 7.24f);
				yield return GenerateOptimalPathTestCase(4, 3, new Point2(3, 0), new Point2(0, 2), 3.83f);
				yield return GenerateOptimalPathTestCase(11, 11, new Point2(0, 0), new Point2(10, 0), 10.83f, new[] { new Point2(5, 0) });
				yield return GenerateOptimalPathTestCase(11, 11, new Point2(0, 0), new Point2(10, 0), 11.66f, new[] { new Point2(5, 0), new Point2(5, 1) });
				yield return GenerateOptimalPathTestCase(11, 11, new Point2(0, 0), new Point2(10, 0), 13.66f, new[] { new Point2(5, 0), new Point2(5, 1), new Point2(5, 2), new Point2(2, 2), new Point2(3, 2), new Point2(3, 1) });
				yield return GenerateOptimalPathTestCase(11, 11, new Point2(0, 0), new Point2(7, 2), 9.83f, new[] { new Point2(5, 0), new Point2(5, 1), new Point2(5, 2), new Point2(2, 2), new Point2(3, 2), new Point2(3, 1) });
			}
		}
	}
}
