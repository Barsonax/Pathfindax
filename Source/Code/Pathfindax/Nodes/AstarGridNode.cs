using System;
using System.Diagnostics;
using Pathfindax.Collections;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a gridnode that can be used with the A* algorithm.
	/// </summary>
	[DebuggerDisplay("{Position}")]
	public class AstarGridNode : IGridNodeBase, IHeapItem<AstarGridNode>, INode<AstarGridNode>
	{
		/// <summary>
		/// Used to retrace the path in the A* algorithm.
		/// </summary>
		public AstarGridNode Parent { get; set; }

		/// <summary>
		/// The cost calculated by the A* heuristic
		/// </summary>
		public int HCost { get; set; }

		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public int GCost { get; set; }

		/// <inheritdoc />
		public int HeapIndex { get; set; }

		/// <inheritdoc />
		public NodeConnection<AstarGridNode>[] Connections { get; set; }

		/// <inheritdoc />
		public PositionF WorldPosition => _sourceGridNode.WorldPosition;

		/// <inheritdoc />
		public ushort GridX => _sourceGridNode.GridX;

		/// <inheritdoc />
		public ushort GridY => _sourceGridNode.GridY;
		private int FCost => GCost + HCost;
		private readonly IGridNodeBase _sourceGridNode;

		/// <inheritdoc />
		public byte MovementPenalty
		{
			get { return _sourceGridNode.MovementPenalty; }
			set { throw new NotSupportedException("You can only change this in the source node"); }
		}

		/// <inheritdoc />
		public GridClearance[] Clearances
		{
			get { return _sourceGridNode.Clearances; }
			set { throw new NotSupportedException("You can only change this in the source node"); }
		}

		/// <inheritdoc />
		public int GetTrueClearance(PathfindaxCollisionCategory collisionCategory)
		{
			return _sourceGridNode.GetTrueClearance(collisionCategory);
		}

		public AstarGridNode(IGridNodeBase source)
		{
			_sourceGridNode = source;
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
