using System.Collections.Generic;
using Duality.Drawing;
using Pathfindax.Graph;

namespace Pathfindax.Visualization
{
	public class NodeDrawingLayer : IDrawingLayer
	{
		public bool VisibleDefault { get; set; }
		public ColorRgba DefaultColor { get; set; } = ColorRgba.Grey;
		public NodeDrawingState[] Nodes { get; }

		public NodeDrawingLayer(int nodeCount)
		{
			Nodes = new NodeDrawingState[nodeCount];
			Reset();
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
	}
}