using System;
using Duality;
using Duality.Drawing;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class TextDrawingLayer : IDrawingLayer
	{
		public ColorRgba Color { get; set; } = ColorRgba.Black;
		public string DefaultText { get; set; }
		public string[] Texts { get; }
		public DefinitionNode[] DefinitionNodes { get; }
		public Transformer Transformer { get; }

		public TextDrawingLayer(DefinitionNode[] definitionNodes, Transformer transformer)
		{
			Transformer = transformer;
			DefinitionNodes = definitionNodes;
			Texts = new string[definitionNodes.Length];
		}

		public void Reset()
		{
			for (int i = 0; i < Texts.Length; i++)
			{
				Texts[i] = DefaultText;
			}
		}

		public void Draw(IRenderer renderer)
		{
			renderer.SetColor(Color);
			for (var i = 0; i < Texts.Length; i++)
			{
				if (string.IsNullOrEmpty(Texts[i])) continue;
				var nodeWorldPosition = Transformer.ToWorld(DefinitionNodes[i].Position);
				if (!string.IsNullOrEmpty(Texts[i]))
				{
					renderer.DrawText(nodeWorldPosition, Texts[i]);
				}
			}
		}
	}
}