using Duality;
using Pathfindax.Collections;

namespace Pathfindax.Utils
{
	public static class ReadOnlyArray2DExtensions
	{
		public static int ToIndex(this IReadOnlyArray2D array, int x, int y)
		{
			return x + y * array.Width;
		}

		public static int ToIndex(this IReadOnlyArray2D array, Point2 gridCoords)
		{
			return ToIndex(array, gridCoords.X, gridCoords.Y);
		}

		public static Point2 ToGrid(this IReadOnlyArray2D array, int i)
		{
			var y = i / array.Width;
			var x = i - y * array.Width;
			return new Point2(x, y);
		}
	}
}
