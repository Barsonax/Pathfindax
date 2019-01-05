using System.Collections.Generic;
using Duality;
using Duality.Drawing;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class NodeVisualization : IVisualizer
	{
		public ColorRgba Color { get; set; } = ColorRgba.Grey;
		public IEnumerable<int> Nodes { get; set; }
		public DefinitionNode[] DefinitionNodes { get; }
		public Transformer Transformer { get; }

		public NodeVisualization(DefinitionNode[] definitionNodes, Transformer transformer)
		{
			DefinitionNodes = definitionNodes;
			Transformer = transformer;
		}

		public void Draw(IRenderer renderer)
		{
			renderer.SetColor(Color);
			if (Nodes == null)
			{
				for (var i = 0; i < DefinitionNodes.Length; i++)
				{
					DrawNode(renderer, Transformer, DefinitionNodes[i].Position);
				}
			}
			else
			{
				foreach (var i in Nodes)
				{
					DrawNode(renderer, Transformer, DefinitionNodes[i].Position);
				}
			}
		}

		public static void DrawNode(IRenderer renderer, Transformer transformer, in Vector2 position)
		{
			var nodeWorldPosition = transformer.ToWorld(position);
			renderer.FillCircle(nodeWorldPosition, transformer.Scale.X * 0.25f);
		}
	}
}