using System;
using System.Diagnostics;
using Pathfindax.Collections;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	[DebuggerDisplay("{Position}")]
	public class AstarGridNode : IGridNodeBase, IHeapItem<AstarGridNode>, INode<AstarGridNode>
	{
		public AstarGridNode Parent { get; set; }
		public int HCost { get; set; }
		public int GCost { get; set; }
		public int HeapIndex { get; set; }
		public NodeConnection<AstarGridNode>[] Connections { get; set; }

		public readonly IGridNodeBase SourceGridNode;

		public PositionF Position => SourceGridNode.Position;
		public PositionF WorldPosition => SourceGridNode.WorldPosition;
		public int GridX => SourceGridNode.GridX;
		public int GridY => SourceGridNode.GridY;
		public int FCost => GCost + HCost;

		public bool GetClearance(PathfindaxCollisionCategory collisionCategory, byte neededClearance)
		{
			return SourceGridNode.GetClearance(collisionCategory, neededClearance);
		}

		public GridClearance[] Clearances
		{
			get { return SourceGridNode.Clearances; }
			set { throw new NotSupportedException("You can only change this in the source node"); }
		}

		public AstarGridNode(IGridNodeBase source)
		{
			SourceGridNode = source;
			HCost = -1;
			GCost = -1;
		}

		public int CompareTo(AstarGridNode other)
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
			return $"X:{GridX} Y:{GridY}";
		}
	}
}
