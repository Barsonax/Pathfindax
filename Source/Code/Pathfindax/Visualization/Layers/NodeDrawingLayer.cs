using System.Collections.Generic;
using Duality.Drawing;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class NodeDrawingLayer : IDrawingLayer
	{
		public bool VisibleDefault { get; set; }
		public ColorRgba DefaultColor { get; set; } = ColorRgba.Grey;
		public NodeDrawingState[] Nodes { get; }
		public DefinitionNode[] DefinitionNodes { get; }
		public Transformer Transformer { get; }
		public float NodeSize { get; set; } = 1f;

		public NodeDrawingLayer(DefinitionNode[] definitionNodes, Transformer transformer)
		{
			DefinitionNodes = definitionNodes;
			Nodes = new NodeDrawingState[definitionNodes.Length];
			Transformer = transformer;
			Reset();
		}

		public void Draw(IRenderer renderer)
		{
			for (var i = 0; i < DefinitionNodes.Length; i++)
			{
				if (!Nodes[i].Visible) continue;
				renderer.SetColor(Nodes[i].Color);
				DrawNode(renderer, Transformer, DefinitionNodes[i]);
			}
		}

		public void Reset()
		{
			for (var i = 0; i < Nodes.Length; i++)
			{
				Nodes[i] = new NodeDrawingState(VisibleDefault, DefaultColor);
			}
		}

		public void SetNodeState(IEnumerable<int> indexes, ColorRgba color, bool visible = true)
		{
			foreach (var i in indexes)
			{
				SetNodeState(i, color, visible);
			}
		}

		public void SetNodeState(int index, ColorRgba color, bool visible = true)
		{
			Nodes[index] = new NodeDrawingState(visible, color);
		}

		public static void DrawNode(IRenderer renderer, Transformer transformer, in DefinitionNode definitionNode)
		{
			var nodeWorldPosition = transformer.ToWorld(definitionNode.Position);
			renderer.FillCircle(nodeWorldPosition, transformer.Scale.X * 0.25f);
		}
	}
}