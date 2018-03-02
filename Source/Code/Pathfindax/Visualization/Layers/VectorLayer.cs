using Duality;
using Duality.Drawing;
using Pathfindax.Graph;

namespace Pathfindax.Visualization
{
	public class VectorLayer : IDrawingLayer
	{
		public ColorRgba Color { get; set; } = ColorRgba.White;
		public Vector2[] Vectors { get; }

		public VectorLayer(int nodeCount)
		{
			Vectors = new Vector2[nodeCount];
		}

		public void Reset() { }
	}
}