using Duality.Drawing;

namespace Pathfindax.Visualization
{
	public class ConnectionDrawingLayer : IDrawingLayer
	{
		public ColorRgba Color { get; set; } = ColorRgba.White;

		public void Reset() { }
	}
}