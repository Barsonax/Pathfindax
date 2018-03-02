using Duality.Drawing;
using Pathfindax.Graph;

namespace Pathfindax.Visualization
{
	public class TextDrawingLayer : IDrawingLayer
	{
		public ColorRgba Color { get; set; } = ColorRgba.Black;
		public string DefaultText { get; set; }
		public string[] Texts { get; }

		public TextDrawingLayer(int nodeCount)
		{
			Texts = new string[nodeCount];
		}

		public void Reset()
		{
			for (int i = 0; i < Texts.Length; i++)
			{
				Texts[i] = DefaultText;
			}
		}
	}
}