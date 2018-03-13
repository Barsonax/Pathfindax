using Duality.Drawing;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class WaypointPathVisualization : IVisualizer
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

		public void SetPath(int[] waypointPath, Transformer transformer, DefinitionNode[] definitionNodes)
		{
			Path = waypointPath;
			Start = waypointPath[0];
			End = waypointPath[waypointPath.Length - 1];
			Transformer = transformer;
			NodeArray = definitionNodes;
		}

		public void Draw(IRenderer renderer)
		{
			if (NodeArray == null || Transformer == null) return;

			if (Start != -1)
			{
				renderer.SetColor(StartColor);
				NodeVisualization.DrawNode(renderer, Transformer, NodeArray[Start]);
			}

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
					NodeVisualization.DrawNode(renderer, Transformer, NodeArray[Path[i]]);
				}
			}

			if (End != -1)
			{
				renderer.SetColor(EndColor);
				NodeVisualization.DrawNode(renderer, Transformer, NodeArray[End]);
			}
		}
	}
}