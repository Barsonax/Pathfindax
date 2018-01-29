using Duality;
using Pathfindax.Collections;

namespace Pathfindax.Utils
{
	public static class ReadonlyArrayExtensions
	{
		public static int ToIndex(this IReadOnlyArray2D array, int x, int y)
		{
			return x + y * array.Width;
		}

		public static int ToIndex(this IReadOnlyArray2D array, Point2 gridCoords)
		{
			return ToIndex(array, gridCoords.X, gridCoords.Y);
		}
	}
}
