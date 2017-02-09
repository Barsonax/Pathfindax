using System;
using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	[DebuggerDisplay("{Position}")]
	public class AstarGridNode : IAStarGridNode
	{
		public IAStarGridNode Parent { get; set; }
		public int HCost { get; set; }
		public int GCost { get; set; }
		public int HeapIndex { get; set; }
		public IList<NodeConnection<IAStarGridNode>> Connections { get; set; }

		public readonly IGridNodeBase SourceGridNode;

		public PositionF Position => SourceGridNode.Position;
		public PositionF WorldPosition => SourceGridNode.WorldPosition;
		public int GridX => SourceGridNode.GridX;
		public int GridY => SourceGridNode.GridY;
		public int FCost => GCost + HCost;

		public PathfindaxCollisionCategory CollisionCategory
		{
			get
			{
				return SourceGridNode.CollisionCategory;
			}
			set { throw new NotSupportedException("You can only change this in the source node"); }
		}

		public IList<GridClearance> Clearances
		{
			get { return SourceGridNode.Clearances; }
			set { throw new NotSupportedException("You can only change this in the source node"); }
		}

		public AstarGridNode(IGridNodeBase source)
		{
			Connections = new List<NodeConnection<IAStarGridNode>>();
			SourceGridNode = source;
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
			return $"X:{GridX} Y:{GridY} CollisionCategory: {CollisionCategory}";
		}
	}
}
