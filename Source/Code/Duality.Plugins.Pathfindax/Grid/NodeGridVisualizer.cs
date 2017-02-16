using Duality.Drawing;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Duality.Plugins.Pathfindax.Grid
{
	/// <summary>
	/// Class for visualizing a <see cref="INodeGrid{TNode}"/>
	/// </summary>
	public class NodeGridVisualizer
	{
		/// <summary>
		/// The size of the agent that will be used to draw the nodes that are blocked.
		/// </summary>
		public byte AgentSize { get; set; }

		/// <summary>
		/// The collision category that will be used to draw the nodes that are blocked.
		/// </summary>
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
		/// This will draw the <see cref="IGridNode"/> and their connections to other <see cref="IGridNode"/> in the <see cref="INodeGrid{TNode}"/>
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
					if (node.Fits(CollisionCategory, AgentSize))
					{
						canvas.DrawCircle(node.WorldPosition.X, node.WorldPosition.Y, _nodeSize);
					}
					else
					{
						canvas.FillCircle(node.WorldPosition.X, node.WorldPosition.Y, _nodeSize);
					}
					canvas.State.ColorTint = new ColorRgba(199, 21, 133);
					foreach (var connection in node.Connections)
					{
						if ((connection.CollisionCategory & CollisionCategory) != 0)
						{
							continue;
						}
						var vector = (connection.To.WorldPosition - node.WorldPosition) * 0.5f;
						canvas.DrawDashLine(node.WorldPosition.X, node.WorldPosition.Y, node.WorldPosition.X + vector.X, node.WorldPosition.Y + vector.Y);
					}
				}
			}
		}
	}
}