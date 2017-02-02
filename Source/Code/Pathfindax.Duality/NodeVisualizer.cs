using Duality;
using Duality.Drawing;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Pathfindax.Duality
{
	public class NodeVisualizer
	{
		private readonly INodeNetwork<IGridNode> _nodeNetwork;
		private readonly float _nodeSize;
		private Vector2 _offset;

		public NodeVisualizer(INodeNetwork<IGridNode> nodeNetwork, float nodeSize)
		{
			_nodeNetwork = nodeNetwork;
			_nodeSize = nodeSize;
			_offset = new Vector2(nodeNetwork.Offset.X, nodeNetwork.Offset.Y);
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
						
					}
					else
					{
						canvas.FillCircle(node.Position.X + _offset.X, node.Position.Y + _offset.Y, _nodeSize);
					}
					canvas.State.ColorTint = new ColorRgba(199, 21, 133);
					foreach (var nodeNeighbour in node.Neighbours)
					{
						var vector = (nodeNeighbour.Position - node.Position) * 0.5f;
						canvas.DrawDashLine(node.Position.X + _offset.X, node.Position.Y + _offset.Y, (node.Position.X + vector.X) + _offset.X, (node.Position.Y + vector.Y) + _offset.Y);
					}
				}
			}
		}
	}
}