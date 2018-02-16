using Duality;
using NUnit.Framework;
using Pathfindax.Graph;

namespace Pathfindax.Test.Tests.Graph
{
	[TestFixture]
	public class GridTransformerTests
	{
		[Test, TestCaseSource(typeof(GraphTestCases), nameof(GraphTestCases.GridTransformTestCases))]
		public void ToGrid_CorrectPosition(Point2 gridSize, Vector2 scale, Vector2 position, Vector2 worldPositionToTransform, Point2 expectedGridPosition)
		{
			var transformer = new GridTransformer(gridSize, scale, position);
			var gridPosition = transformer.ToGrid(worldPositionToTransform);
			Assert.AreEqual(expectedGridPosition, gridPosition);
		}
	}
}
