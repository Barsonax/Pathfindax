using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Grid;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	[DebuggerDisplay("{Position}")]
	public class GridNode : IGridNode
	{
		public INodeNetworkBase NodeNetwork { get; }
		public bool Walkable { get; set; }
		public PositionF Position { get; }
		public PositionF WorldPosition => Position + NodeNetwork.Offset;
		public IList<GridClearance> Clearances { get; set; }
		public int GridX { get; }
		public int GridY { get; }
		public IList<NodeConnection<IGridNode>> Connections { get; set; }

		public GridNode(INodeGridBase nodeNetwork, int gridX, int gridY, bool walkable = true)
		{
			NodeNetwork = nodeNetwork;
			Connections = new List<NodeConnection<IGridNode>>();
			Walkable = walkable;
			Position = new PositionF(gridX * nodeNetwork.NodeSize.X, gridY * nodeNetwork.NodeSize.Y);
			GridX = gridX;
			GridY = gridY;
		}

		public override string ToString()
		{
			return $"{GridX}:{GridY}";
		}
	}
}