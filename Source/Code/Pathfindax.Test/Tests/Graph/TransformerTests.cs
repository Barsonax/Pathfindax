using Duality;
using Xunit;
using Pathfindax.Graph;

namespace Pathfindax.Test.Tests.Graph
{
	
	public class TransformerTests
	{
        [Theory, MemberData(nameof(GraphTestCases.TransformTestCases), MemberType = typeof(GraphTestCases))]
		public void ToLocal_CorrectPosition(Vector2 scale, Vector2 position, Vector2 worldPositionToTransform, Vector2 expectedLocalPosition)
		{
			var transformer = new Transformer(scale, position);
			var localPosition = transformer.ToLocal(worldPositionToTransform);
			Assert.Equal(expectedLocalPosition.X, localPosition.X, 3);
			Assert.Equal(expectedLocalPosition.Y, localPosition.Y, 3);
		}

        [Theory, MemberData(nameof(GraphTestCases.TransformTestCases), MemberType = typeof(GraphTestCases))]
        public void ToWorld_CorrectPosition(Vector2 scale, Vector2 position, Vector2 expectedWorldPosition, Vector2 localPositionToTransform)
		{
			var transformer = new Transformer(scale, position);
			var localPosition = transformer.ToWorld(localPositionToTransform);
			Assert.Equal(expectedWorldPosition.X, localPosition.X, 3);
			Assert.Equal(expectedWorldPosition.Y, localPosition.Y, 3);
		}
	}
}
