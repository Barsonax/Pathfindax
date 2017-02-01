using System.Collections.Generic;
using System.Linq.Expressions;
using Duality;
using Duality.Drawing;
using Pathfindax.Nodes;

namespace Pathfindax.Duality
{
	public class NodeVisualizer
	{
		private readonly IEnumerable<IGridNode> _nodeNetwork;
		private readonly float _nodeSize;
		private Vector2 _offset;

		public NodeVisualizer(IEnumerable<IGridNode> nodeNetwork, float nodeSize, Vector2 offset = default(Vector2))
		{
			_nodeNetwork = nodeNetwork;
			_nodeSize = nodeSize;
			_offset = offset;
		}

		public void Draw(IDrawDevice device)
		{
			if (_nodeNetwork != null)
			{
				var canvas = new Canvas(device, new CanvasBuffer());
				canvas.State.ZOffset = -5;
				foreach (var node in _nodeNetwork)
				{
					canvas.State.ColorTint = ColorRgba.LightGrey;
					if (node.Walkable)
					{
						canvas.DrawCircle(node.WorldPosition.X + _offset.X, node.WorldPosition.Y + _offset.Y, _nodeSize);
					}
					else
					{
						canvas.FillCircle(node.WorldPosition.X + _offset.X, node.WorldPosition.Y + _offset.Y, _nodeSize);
					}
					canvas.State.ColorTint = ColorRgba.Red;
					foreach (var nodeNeighbour in node.Neighbours)
					{
						canvas.DrawLine(node.WorldPosition.X + _offset.X, node.WorldPosition.Y + _offset.Y, nodeNeighbour.WorldPosition.X + _offset.X, nodeNeighbour.WorldPosition.Y + _offset.Y);
					}
				}
			}
		}
	}
}