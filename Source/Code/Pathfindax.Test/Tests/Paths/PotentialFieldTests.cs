using System.Collections;
using Duality;
using NUnit.Framework;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Paths;

namespace Pathfindax.Test.Tests.Paths
{
	[TestFixture]
	public class PotentialFieldTests
	{
		[Test, TestCaseSource(typeof(PotentialFieldTests), nameof(ZeroPotentialsTestCases))]
		public void GetHeading_ZeroPotentials_ZeroVector(Vector2 worldPosition)
		{
			const int width = 3;
			const int height = 3;
			var transformer = new GridTransformer(new Point2(width, height), new Vector2(1, 1));
			var potentials = new Array2D<float>(width, height);
			var potentialField = new PotentialField(transformer, new Point2(), potentials);
			CheckHeading(potentialField, new Vector2(0, 0), new Vector2(0, 0));
		}

		private static IEnumerable ZeroPotentialsTestCases
		{
			get
			{
				for (int y = 0; y < 3; y++)
				{
					for (int x = 0; x < 3; x++)
					{
						yield return new TestCaseData(new Vector2(x, y));
					}
				}
			}
		}

		private void CheckHeading(PotentialField potentialField, Vector2 worldPosition, Vector2 expectedHeading)
		{
			var heading = potentialField.GetHeading(worldPosition);
			Assert.AreEqual(expectedHeading.X, heading.X, 0.001f);
			Assert.AreEqual(expectedHeading.Y, heading.Y, 0.001f);
		}
	}
}
