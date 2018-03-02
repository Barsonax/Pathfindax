using Duality.Drawing;

namespace Pathfindax.Visualization
{
	public struct NodeDrawingState
	{
		public ColorRgba Color;
		public bool Visible;

		public NodeDrawingState(bool visible, ColorRgba color)
		{
			Color = color;
			Visible = visible;
		}
	}
}
