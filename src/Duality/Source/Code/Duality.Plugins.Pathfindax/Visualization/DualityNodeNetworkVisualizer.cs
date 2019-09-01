using Duality.Drawing;
using Pathfindax.Visualization;

namespace Duality.Plugins.Pathfindax.Visualization
{
	public class DualityRenderer : IRenderer
	{
		private readonly Canvas _canvas;
		private readonly IDrawDevice _device;

		public DualityRenderer(IDrawDevice device, float zOffset)
		{
			_canvas = new Canvas();
			_device = device;
			_canvas.State.DepthOffset = zOffset;
		}

		public void SetColor(ColorRgba color)
		{
			_canvas.Begin(_device);
			_canvas.State.ColorTint = color;
			_canvas.End();
		}

		public void SetZOffset(float z)
		{
			_canvas.State.DepthOffset = z;
		}

		public void FillCircle(Vector2 position, float radius)
		{
			_canvas.Begin(_device);
			_canvas.FillCircle(position.X, position.Y, radius);
			_canvas.End();
		}

		public void DrawLine(Vector2 from, Vector2 to)
		{
			_canvas.Begin(_device);
			_canvas.DrawLine(from.X, from.Y, to.X, to.Y);
			_canvas.End();
		}

		public void DrawText(Vector2 position, string text)
		{
			_canvas.Begin(_device);
			_canvas.DrawText(text, position.X, position.Y, -1f, Alignment.Center);
			_canvas.End();
		}
	}
}
