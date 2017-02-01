using System.Collections.Generic;
using Duality.Drawing;
using Pathfindax.Nodes;

namespace Pathfindax.Duality
{
	public class NodeVisualizer
	{
		private readonly IEnumerable<IGridNode> _nodeNetwork;
		private readonly float _nodeSize;

		public NodeVisualizer(IEnumerable<IGridNode> nodeNetwork, float nodeSize)
		{
			_nodeNetwork = nodeNetwork;
			_nodeSize = nodeSize;
		}

		public void Draw(IDrawDevice device)
		{
			if (_nodeNetwork != null)
			{
				var canvas = new Canvas(device, new CanvasBuffer());
				foreach (var node in _nodeNetwork)
				{
					canvas.State.ColorTint = ColorRgba.LightGrey;
					if (node.Walkable)
					{
						canvas.DrawCircle(node.WorldPosition.X, node.WorldPosition.Y, _nodeSize);
					}
					else
					{
						canvas.FillCircle(node.WorldPosition.X, node.WorldPosition.Y, _nodeSize);
					}
					canvas.State.ColorTint = ColorRgba.DarkGrey;
					foreach (var nodeNeighbour in node.Neighbours)
					{
						canvas.DrawLine(node.WorldPosition.X, node.WorldPosition.Y, nodeNeighbour.WorldPosition.X, nodeNeighbour.WorldPosition.Y);
					}
				}
			}
		}
	}
}