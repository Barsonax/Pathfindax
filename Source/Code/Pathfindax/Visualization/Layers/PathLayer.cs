using Duality.Drawing;

namespace Pathfindax.Visualization
{
	public class PathLayer : IDrawingLayer
	{
		public ColorRgba StartColor { get; set; } = ColorRgba.White;
		public ColorRgba EndColor { get; set; } = ColorRgba.Black;
		public ColorRgba NodeColor { get; set; } = ColorRgba.Blue;
		public ColorRgba LineColor { get; set; } = ColorRgba.Green;
		public int Start { get; set; }
		public int End { get; set; }
		public int[] Path { get; set; }

		public void Reset() { }
	}
}