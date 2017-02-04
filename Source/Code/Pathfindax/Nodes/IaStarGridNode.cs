using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Grid;

namespace Pathfindax.Nodes
{
	public class AstarGridNode : AstarGridNodeBase, IAStarGridNode
	{
		public IList<NodeConnection<IAStarGridNode>> Connections { get; set; }
		public AstarGridNode(INodeNetworkBase nodeNetwork, IGridNodeBase source) : base(nodeNetwork, source)
		{
			Connections = new List<NodeConnection<IAStarGridNode>>();
		}
	}

	[DebuggerDisplay("{Position}")]
	public class AstarGridNodeBase : GridNodeBase
	{
		public IAStarGridNode Parent { get; set; }
		public int HCost { get; set; }
		public int GCost { get; set; }
		public int HeapIndex { get; set; }
		public int FCost => GCost + HCost;

		public AstarGridNodeBase(INodeNetworkBase nodeNetwork, IGridNodeBase source) : base(nodeNetwork, source.Position, source.GridX, source.GridY, source.Walkable)
		{
			HCost = -1;
			GCost = -1;
		}

		public int CompareTo(IAStarGridNode other)
		{
			var compare = FCost.CompareTo(other.FCost);
			if (compare == 0)
			{
				compare = HCost.CompareTo(other.HCost);
			}
			return -compare;
		}

		public override string ToString()
		{
			return $"X:{GridX} Y:{GridY} Walkable: {Walkable}";
		}
	}
}
