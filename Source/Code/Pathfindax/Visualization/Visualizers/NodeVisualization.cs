using System.Collections.Generic;
using System.Linq;
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
			if (Nodes == null) return;
			renderer.SetColor(Color);
			foreach (var i in Nodes)
			{
				DrawNode(renderer, Transformer, DefinitionNodes[i]);
			}
		}

		public static void DrawNode(IRenderer renderer, Transformer transformer, in DefinitionNode definitionNode)
		{
			var nodeWorldPosition = transformer.ToWorld(definitionNode.Position);
			renderer.FillCircle(nodeWorldPosition, transformer.Scale.X * 0.25f);
		}
	}
}