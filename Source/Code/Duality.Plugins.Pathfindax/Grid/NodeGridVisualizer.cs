using Duality.Drawing;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Duality.Plugins.Pathfindax.Grid
{
	/// <summary>
	/// Class for visualizing a <see cref="ISourceNodeGrid{TNode}"/>
	/// </summary>
	public class NodeGridVisualizer
	{
		/// <summary>
		/// The collision category that will be used to draw the nodes that are blocked.
		/// </summary>
		public PathfindaxCollisionCategory CollisionCategory { get; set; }

		private readonly ISourceNodeGrid<ISourceGridNode> _sourceNodeNetwork;
		private readonly float _nodeSize;

		/// <summary>
		/// Creates a new <see cref="NodeGridVisualizer"/> instance
		/// </summary>
		/// <param name="sourceNodeNetwork"></param>
		public NodeGridVisualizer(ISourceNodeGrid<ISourceGridNode> sourceNodeNetwork)
		{
			_sourceNodeNetwork = sourceNodeNetwork;
			_nodeSize = sourceNodeNetwork.NodeSize.X * 0.3f;
			CollisionCategory = PathfindaxCollisionCategory.Cat1;
		}

		/// <summary>
		/// This will draw the <see cref="ISourceGridNode"/> and their connections to other <see cref="ISourceGridNode"/> in the <see cref="ISourceNodeGrid{TNode}"/>
		/// </summary>
		public void Draw(IDrawDevice device)
		{
			if (_sourceNodeNetwork != null)
			{
				var canvas = new Canvas(device, new CanvasBuffer());
				canvas.State.ZOffset = -8;
				foreach (var node in _sourceNodeNetwork)
				{
					canvas.State.ColorTint = ColorRgba.LightGrey;
					var nodePosition = node.WorldPosition;
					var clearance = node.GetTrueClearance(CollisionCategory);
					if (clearance == int.MaxValue)
					{
						canvas.DrawCircle(nodePosition.X, nodePosition.Y, _nodeSize);
					}
					else
					{
						canvas.FillCircle(nodePosition.X, nodePosition.Y, _nodeSize);
						canvas.State.ColorTint = ColorRgba.Black;
						canvas.DrawText(clearance.ToString(), nodePosition.X, nodePosition.Y, -1f, Alignment.Center);
					}
					canvas.State.ColorTint = new ColorRgba(199, 21, 133);
					foreach (var connection in node.Connections)
					{
						if ((connection.CollisionCategory & CollisionCategory) != 0)
						{
							continue;
						}
						var vector = (connection.To.WorldPosition - nodePosition) * 0.5f;
						canvas.DrawDashLine(nodePosition.X, nodePosition.Y, nodePosition.X + vector.X, nodePosition.Y + vector.Y);
					}
				}
			}
		}
	}
}