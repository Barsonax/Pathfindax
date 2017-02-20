using Duality.Drawing;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Duality.Plugins.Pathfindax.Grid
{
	public class NodeNetworkVisualizer
	{
		/// <summary>
		/// The collision category that will be used to draw the nodes that are blocked.
		/// </summary>
		public PathfindaxCollisionCategory CollisionCategory { get; set; }

		private readonly INodeNetwork<Node> _nodeNetwork;
		private readonly float _nodeSize;

		public NodeNetworkVisualizer(INodeNetwork<Node> nodeNetwork, float nodeSize)
		{
			_nodeNetwork = nodeNetwork;
			_nodeSize = nodeSize;
			CollisionCategory = PathfindaxCollisionCategory.Cat1;
		}

		/// <summary>
		/// This will draw the <see cref="INode"/> and their connections to other <see cref="INode"/> in the <see cref="INodeNetwork{TNode}"/>
		/// </summary>
		public void Draw(IDrawDevice device)
		{
			if (_nodeNetwork != null)
			{
				var canvas = new Canvas(device, new CanvasBuffer());
				canvas.State.ZOffset = -8;
				foreach (var node in _nodeNetwork)
				{
					canvas.State.ColorTint = ColorRgba.LightGrey;
					var nodePosition = node.WorldPosition;
					canvas.FillCircle(nodePosition.X, nodePosition.Y, _nodeSize);
					canvas.State.ColorTint = ColorRgba.VeryLightGrey;
					if (node.Connections != null)
					{
						canvas.State.ColorTint = new ColorRgba(199, 21, 133);
						foreach (var connection in node.Connections)
						{
							if ((connection.CollisionCategory & CollisionCategory) != 0)
							{
								continue;
							}
							var vector = (connection.To.WorldPosition - nodePosition)*0.5f; //Times 0.5f so we can see the connections in both directions.
							canvas.DrawDashLine(nodePosition.X, nodePosition.Y, nodePosition.X + vector.X, nodePosition.Y + vector.Y);
						}
					}
				}
			}
		}
	}
}
