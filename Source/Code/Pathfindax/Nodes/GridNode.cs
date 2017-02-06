using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Grid;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	[DebuggerDisplay("{Position}")]
	public class GridNode : GridNodeBase, IGridNode
	{
		public IList<NodeConnection<IGridNode>> Connections { get; set; }

		public GridNode(INodeNetworkBase nodeNetwork, PositionF worldPos, int gridX, int gridY, bool walkable = true) : base(nodeNetwork, worldPos, gridX, gridY, walkable)
		{
			Connections = new List<NodeConnection<IGridNode>>();
		}
	}

	[DebuggerDisplay("{Position}")]
	public abstract class GridNodeBase : NodeBase, IGridNodeBase
	{
		public IList<GridClearance> Clearances { get; set; }
		public int GridX { get; }
		public int GridY { get; }

		protected GridNodeBase(INodeNetworkBase nodeNetwork, PositionF worldPos, int gridX, int gridY, bool walkable = true) : base(nodeNetwork, worldPos, walkable)
		{
			Walkable = walkable;
			GridX = gridX;
			GridY = gridY;
		}

		public override string ToString()
		{
			return $"{GridX}:{GridY}";
		}
	}
}