using Duality;
using Xunit;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Paths;

namespace Pathfindax.Test.Tests.Paths
{
	
	public class PotentialFieldTests
	{
		[Theory, MemberData(nameof(PathTestCases.ZeroPotentialsTestCases), MemberType = typeof(PathTestCases))]
		public void GetHeading_ZeroPotentials_ZeroVector(Vector2 worldPosition)
		{
			const int width = 3;
			const int height = 3;
			var transformer = new GridTransformer(new Point2(width, height), new Vector2(1, 1));
			var potentials = new Array2D<float>(width, height);
			var potentialField = new PotentialField(transformer, new Point2(), potentials);
			CheckHeading(potentialField, worldPosition, new Vector2(0, 0));
		}

		private void CheckHeading(PotentialField potentialField, Vector2 worldPosition, Vector2 expectedHeading)
		{
			var heading = potentialField.GetHeading(worldPosition);
			Assert.Equal(expectedHeading.X, heading.X, 3);
			Assert.Equal(expectedHeading.Y, heading.Y, 3);
		}
	}
}
