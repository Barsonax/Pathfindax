using Duality.Drawing;
using Pathfindax.Visualization;

namespace Duality.Plugins.Pathfindax.Visualization
{
	public class DualityRenderer : IRenderer
	{
		private readonly CanvasBuffer _buffer = new CanvasBuffer();
		private readonly Canvas _canvas;

		public DualityRenderer(IDrawDevice device, int zOffset)
		{
			_canvas = new Canvas(device, _buffer);
			_canvas.State.ZOffset = zOffset;
		}

		public void SetColor(ColorRgba color)
		{
			_canvas.State.ColorTint = color;
		}

		public void SetZOffset(int z)
		{
			_canvas.State.ZOffset = z;
		}

		public void FillCircle(Vector2 position, float radius)
		{
			_canvas.FillCircle(position.X, position.Y, radius);
		}

		public void DrawLine(Vector2 from, Vector2 to)
		{
			_canvas.DrawLine(from.X, from.Y, to.X, to.Y);
		}

		public void DrawText(Vector2 position, string text)
		{
			_canvas.DrawText(text, position.X, position.Y, -1f, Alignment.Center);
		}
	}
}
