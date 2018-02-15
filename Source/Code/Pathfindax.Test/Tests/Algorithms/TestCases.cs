using System.Collections;
using Duality;
using NUnit.Framework;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Test.Tests.Algorithms
{
	public class TestCases
	{
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
				yield return GenerateOptimalPathTestCase(11, 11, new Point2(0, 0), new Point2(10, 0), 13.07f, new[] { new Point2(5, 0), new Point2(5, 1), new Point2(5, 2), new Point2(2, 2), new Point2(3, 2), new Point2(3, 1) });
				yield return GenerateOptimalPathTestCase(11, 11, new Point2(0, 0), new Point2(7, 2), 9.24f, new[] { new Point2(5, 0), new Point2(5, 1), new Point2(5, 2), new Point2(2, 2), new Point2(3, 2), new Point2(3, 1) });
			}
		}

		public static IEnumerable NodeGridGenerationTestCases
		{
			get
			{
				yield return NodeGridGenerationTestCase(11, 11);
				yield return NodeGridGenerationTestCase(7, 7);
				yield return NodeGridGenerationTestCase(4, 3);
				yield return NodeGridGenerationTestCase(11, 11, new[] { new Point2(5, 0) });
				yield return NodeGridGenerationTestCase(11, 11, new[] { new Point2(5, 0), new Point2(5, 1) });
				yield return NodeGridGenerationTestCase(11, 11, new[] { new Point2(5, 0), new Point2(5, 1), new Point2(5, 2), new Point2(2, 2), new Point2(3, 2), new Point2(3, 1) });
			}
		}

		private static TestCaseData GenerateOptimalPathTestCase(int width, int height, Point2 start, Point2 end, float expectedPathLength, Point2[] blockedNodes = null)
		{
			var factory = new DefinitionNodeGridFactory();
			var collisionMask = new NodeGridCollisionMask(PathfindaxCollisionCategory.Cat1, width, height);
			if (blockedNodes != null)
			{
				foreach (var blockedNode in blockedNodes)
				{
					collisionMask.Layers[0].CollisionDirections[blockedNode.X, blockedNode.Y] = CollisionDirection.Solid;
				}
			}
			var nodeGrid = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, collisionMask, true);
			var grid = new DefinitionNodeGrid(nodeGrid, new Vector2(1, 1));


			var description = blockedNodes != null ?
				$"Path from {start} to {end} on a {width} by {height} grid with blocked nodes {string.Join(", ", blockedNodes)}" :
				$"Path from {start} to {end} on a {width} by {height} grid";
			return new TestCaseData(grid, start, end, expectedPathLength).SetName(description);
		}

		private static TestCaseData NodeGridGenerationTestCase(int width, int height, Point2[] blockedNodes = null)
		{
			var description = blockedNodes != null ?
				$"{width} by {height} grid with blocked nodes {string.Join(", ", blockedNodes)}" :
				$"{width} by {height} grid";
			return new TestCaseData(width, height, blockedNodes ?? new Point2[0]).SetName(description);
		}
	}
}
