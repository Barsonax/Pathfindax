using Duality;
using Duality.Drawing;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Utils;

namespace Pathfindax.Visualization
{
	public class VectorFieldVisualization : IVisualizer
	{
		public ColorRgba Color { get; set; } = ColorRgba.White;
		public Array2D<Vector2> Vectors { get; set; }
		public GridTransformer Transformer { get; set; }

		public void Draw(IRenderer renderer)
		{
			if (Vectors == null) return;
			renderer.SetColor(Color);
			for (var i = 0; i < Vectors.Length; i++)
			{
				var vector = Vectors[i] * 0.5f * Transformer.Scale.X;
				var nodeWorldPosition = Transformer.ToWorld(Vectors.ToGrid(i));
				renderer.DrawLine(nodeWorldPosition, nodeWorldPosition + vector);
			}
		}
	}
}