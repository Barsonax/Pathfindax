using Duality;
using Duality.Drawing;

namespace Pathfindax.Visualization
{
	public interface IVisualizer
	{
		void Draw(IRenderer renderer);
	}

	public interface IRenderer
	{
		void SetColor(ColorRgba color);
		void FillCircle(Vector2 position, float radius);
		void DrawLine(Vector2 from, Vector2 to);
		void DrawText(Vector2 position, string text);
	}
}