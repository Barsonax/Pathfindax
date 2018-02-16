using Duality;
using NUnit.Framework;
using Pathfindax.Graph;

namespace Pathfindax.Test.Tests.Graph
{
	[TestFixture]
	public class TransformerTests
	{
		[Test, TestCaseSource(typeof(GraphTestCases), nameof(GraphTestCases.TransformTestCases))]
		public void ToLocal_CorrectPosition(Vector2 scale, Vector2 position, Vector2 worldPositionToTransform, Vector2 expectedLocalPosition)
		{
			var transformer = new Transformer(scale, position);
			var localPosition = transformer.ToLocal(worldPositionToTransform);
			Assert.AreEqual(expectedLocalPosition.X, localPosition.X, 0.001f);
			Assert.AreEqual(expectedLocalPosition.Y, localPosition.Y, 0.001f);
		}

		[Test, TestCaseSource(typeof(GraphTestCases), nameof(GraphTestCases.TransformTestCases))]
		public void ToWorld_CorrectPosition(Vector2 scale, Vector2 position, Vector2 expectedWorldPosition, Vector2 localPositionToTransform)
		{
			var transformer = new Transformer(scale, position);
			var localPosition = transformer.ToWorld(localPositionToTransform);
			Assert.AreEqual(expectedWorldPosition.X, localPosition.X, 0.001f);
			Assert.AreEqual(expectedWorldPosition.Y, localPosition.Y, 0.001f);
		}
	}
}
