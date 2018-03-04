using Duality.Drawing;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Paths;

namespace Pathfindax.Visualization
{
	public class PathLayer : IDrawingLayer
	{
		public Transformer Transformer { get; set; }
		public DefinitionNode[] NodeArray { get; set; }
		public int[] Path { get; set; }
		public int Start { get; set; }
		public int End { get; set; }

		public ColorRgba StartColor { get; set; } = ColorRgba.White;
		public ColorRgba EndColor { get; set; } = ColorRgba.Black;
		public ColorRgba NodeColor { get; set; } = ColorRgba.Blue;
		public ColorRgba LineColor { get; set; } = ColorRgba.Green;
		public float NodeSize { get; set; } = 1f;

		public void Draw(IRenderer renderer)
		{
			if (NodeArray == null) return;
			if (Path != null)
			{
				renderer.SetColor(LineColor);
				for (var i = 0; i < Path.Length - 1; i++)
				{
					var from = Transformer.ToWorld(NodeArray[Path[i]].Position);
					var to = Transformer.ToWorld(NodeArray[Path[i + 1]].Position);
					renderer.DrawLine(from, to);
				}

				renderer.SetColor(NodeColor);
				for (var i = 1; i < Path.Length - 1; i++)
				{
					NodeDrawingLayer.DrawNode(renderer, Transformer,NodeArray[Path[i]]);
				}
			}

			if (Start != -1)
			{
				renderer.SetColor(StartColor);
				NodeDrawingLayer.DrawNode(renderer, Transformer, NodeArray[Start]);
			}

			if (End != -1)
			{
				renderer.SetColor(EndColor);
				NodeDrawingLayer.DrawNode(renderer, Transformer, NodeArray[End]);
			}
		}
	}
}