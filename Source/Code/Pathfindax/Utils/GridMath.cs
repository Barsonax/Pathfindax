using Duality;

namespace Pathfindax.Utils
{
	public static class GridMath
	{
		/// <summary>
		/// Transforms a index of a 2d array to the x and y coordinates
		/// </summary>
		/// <param name="width">The width of the 2d array</param>
		/// <param name="index"></param>
		/// <returns></returns>
		public static Point2 TransformToGridCoords(int width, int index)
		{
			var y = index / width;
			var x = index - y * width;
			return new Point2(x, y);
		}
	}
}
