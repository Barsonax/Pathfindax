using Duality;
using Duality.Drawing;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Pathfindax.Duality.Grid
{
	/// <summary>
	/// Class for visualizing a <see cref="INodeGrid{TNode}"/>
	/// </summary>
	public class NodeGridVisualizer
	{
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		private readonly INodeGrid<IGridNode> _nodeNetwork;
		private readonly float _nodeSize;
		private Vector2 _offset;

		public NodeGridVisualizer(INodeGrid<IGridNode> nodeNetwork)
		{
			_nodeNetwork = nodeNetwork;
			_nodeSize = nodeNetwork.NodeSize.X * 0.3f;
			_offset = new Vector2(nodeNetwork.Offset.X, nodeNetwork.Offset.Y);
		}

		/// <summary>
		/// This will draw the <see cref="IGridNode"/> and their connectons to other <see cref="IGridNode"/> in the <see cref="INodeGrid{TNode}"/>
		/// </summary>
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
						canvas.DrawCircle(node.Position.X + _offset.X, node.Position.Y + _offset.Y, _nodeSize);
					}
					else
					{
						canvas.FillCircle(node.Position.X + _offset.X, node.Position.Y + _offset.Y, _nodeSize);
					}
					canvas.State.ColorTint = new ColorRgba(199, 21, 133);
					foreach (var connection in node.Connections)
					{
						if ((connection.CollisionCategory & CollisionCategory) != 0)
						{
							continue;
						}
						var vector = (connection.Node.Position - node.Position) * 0.5f;
						canvas.DrawDashLine(node.Position.X + _offset.X, node.Position.Y + _offset.Y, node.Position.X + vector.X + _offset.X, node.Position.Y + vector.Y + _offset.Y);
					}
				}
			}
		}
	}
}