using Duality;
using Xunit;
using Pathfindax.Graph;

namespace Pathfindax.Test.Tests.Graph
{
	
	public class GridTransformerTests
	{
        [Theory, MemberData(nameof(GraphTestCases.GridTransformTestCases), MemberType = typeof(GraphTestCases))]
        public void ToGrid_CorrectPosition(Point2 gridSize, Vector2 scale, Vector2 position, Vector2 worldPositionToTransform, Point2 expectedGridPosition)
		{
			var transformer = new GridTransformer(gridSize, scale, position);
			var gridPosition = transformer.ToGrid(worldPositionToTransform);
			Assert.Equal(expectedGridPosition, gridPosition);
		}
	}
}
