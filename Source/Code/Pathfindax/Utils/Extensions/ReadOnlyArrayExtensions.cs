using Duality;
using Pathfindax.Collections;

namespace Pathfindax.Utils
{
	public static class ReadOnlyArrayExtensions
	{
		public static Point2 GetCoordinates(this IReadOnlyArray2D array, int index)
		{
			return GridMath.TransformToGridCoords(array.Width, index);
		}
	}
}
