using System.Collections.Generic;
using Duality;
using Duality.Drawing;
using Pathfindax.Visualization;

namespace Pathfindax.Test.Tests.Visualization
{
	public class MockupRenderer : IRenderer
	{
		public List<ColorRgba> SetColorCalls { get; } = new List<ColorRgba>();
		public List<(ColorRgba color, Vector2 position, float radius)> FillCircleCalls { get; } = new List<(ColorRgba, Vector2, float)>();
		public List<(ColorRgba color, Vector2 from, Vector2 to)> DrawLineCalls { get; } = new List<(ColorRgba, Vector2, Vector2 to)>();
		public List<(ColorRgba color, Vector2 position, string text)> DrawTextCalls { get; } = new List<(ColorRgba, Vector2, string text)>();
		public ColorRgba CurrentColor { get; private set; }

		public void SetColor(ColorRgba color)
		{
			SetColorCalls.Add(color);
			CurrentColor = color;
		}

		public void FillCircle(Vector2 position, float radius)
		{
			FillCircleCalls.Add((CurrentColor, position, radius));
		}

		public void DrawLine(Vector2 from, Vector2 to)
		{
			DrawLineCalls.Add((CurrentColor, from, to));
		}

		public void DrawText(Vector2 position, string text)
		{
			DrawTextCalls.Add((CurrentColor, position, text));
		}

		public void ClearCalls()
		{
			FillCircleCalls.Clear();
			DrawLineCalls.Clear();
			DrawTextCalls.Clear();
			SetColorCalls.Clear();
		}
	}
}