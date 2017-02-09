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
        /// The collision category that will be used for visualizing. If the collision category in a connection would collide with this collision category it will not be drawn.
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
                    if (node.Walkable)
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
                        if (connection == null || (connection.CollisionCategory & CollisionCategory) != 0)
                        {
                            continue;
                        }
                        var vector = (connection.To.Position - node.Position) * 0.5f;
                        canvas.DrawDashLine(node.WorldPosition.X, node.WorldPosition.Y, node.WorldPosition.X + vector.X + _offset.X, node.WorldPosition.Y + vector.Y);
                    }
                }
            }
        }
    }
}