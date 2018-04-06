using System.Linq;
using Duality;
using Duality.Drawing;
using Pathfindax.Graph;

namespace Pathfindax.Visualization
{
	public class WaypointPathVisualization : IVisualizer
	{
		public Transformer Transformer { get; set; }

		public Vector2[] Path { get; set; }

		public Vector2? Start { get; set; }
		public Vector2? End { get; set; }

		public ColorRgba StartColor { get; set; } = ColorRgba.White;
		public ColorRgba TargetColor { get; set; } = ColorRgba.Black;
		public ColorRgba WaypointColor { get; set; } = ColorRgba.Blue;
		public ColorRgba LineColor { get; set; } = ColorRgba.Green;

		public void SetPath(Vector2[] waypointPath, Transformer transformer)
		{
			Path = waypointPath;
			Start = waypointPath.FirstOrDefault();
			End = waypointPath.LastOrDefault();
			Transformer = transformer;
		}

		public void Draw(IRenderer renderer)
		{
			if (Transformer == null) return;

			if (Start != null)
			{
				renderer.SetColor(StartColor);
				NodeVisualization.DrawNode(renderer, Transformer, Start.Value);
			}

			if (Path != null)
			{
				renderer.SetColor(LineColor);
				for (var i = 0; i < Path.Length - 1; i++)
				{
					var from = Transformer.ToWorld(Path[i]);
					var to = Transformer.ToWorld(Path[i + 1]);
					renderer.DrawLine(from, to);
				}

				renderer.SetColor(WaypointColor);
				for (var i = 1; i < Path.Length - 1; i++)
				{
					NodeVisualization.DrawNode(renderer, Transformer, Path[i]);
				}
			}

			if (End != null)
			{
				renderer.SetColor(TargetColor);
				NodeVisualization.DrawNode(renderer, Transformer, End.Value);
			}
		}
	}
}