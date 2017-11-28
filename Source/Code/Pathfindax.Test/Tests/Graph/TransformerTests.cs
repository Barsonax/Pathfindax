using System.Collections;
using Duality;
using NUnit.Framework;
using Pathfindax.Graph;

namespace Pathfindax.Test.Tests.Graph
{
	[TestFixture]
	public class TransformerTests
	{
		[Test, TestCaseSource(typeof(TransformerTests), nameof(TransformTestCases))]
		[MaxTime(2000)]
		public void ToLocal_CorrectPosition(Vector2 scale, Vector2 position, Vector2 worldPositionToTransform, Vector2 expectedLocalPosition)
		{
			var transformer = new Transformer(scale, position);
			var localPosition = transformer.ToLocal(worldPositionToTransform.X, worldPositionToTransform.Y);
			Assert.AreEqual(localPosition.X, expectedLocalPosition.X, 0.001f);
			Assert.AreEqual(localPosition.Y, expectedLocalPosition.Y, 0.001f);
		}

		[Test, TestCaseSource(typeof(TransformerTests), nameof(TransformTestCases))]
		[MaxTime(2000)]
		public void ToWorld_CorrectPosition(Vector2 scale, Vector2 position, Vector2 expectedWorldPosition, Vector2 localPositionToTransform)
		{
			var transformer = new Transformer(scale, position);
			var localPosition = transformer.ToWorld(localPositionToTransform.X, localPositionToTransform.Y);
			Assert.AreEqual(localPosition.X, expectedWorldPosition.X, 0.001f);
			Assert.AreEqual(localPosition.Y, expectedWorldPosition.Y, 0.001f);
		}

		public static IEnumerable TransformTestCases
		{
			get
			{
				yield return new TestCaseData(new Vector2(1, 1), new Vector2(0, 0), new Vector2(0, 8), new Vector2(0, 8));
				yield return new TestCaseData(new Vector2(2, 2), new Vector2(0, 0), new Vector2(0, 8), new Vector2(0, 4));
				yield return new TestCaseData(new Vector2(2, 2), new Vector2(0, 0), new Vector2(15, 12), new Vector2(7.5f, 6));
				yield return new TestCaseData(new Vector2(2, 1), new Vector2(30, 10), new Vector2(0, 8), new Vector2(-15, -2));
				yield return new TestCaseData(new Vector2(1, 1), new Vector2(30, 10), new Vector2(0, 8), new Vector2(-30, -2));
				yield return new TestCaseData(new Vector2(1, 1), new Vector2(13, 16), new Vector2(0, 8), new Vector2(-13, -8));				
			}
		}
	}
}
