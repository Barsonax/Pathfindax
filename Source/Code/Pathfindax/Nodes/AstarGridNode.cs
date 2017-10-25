using System;
using Duality;
using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a gridnode that can be used with the A* algorithm.
	/// </summary>
	public class AstarGridNode : IGridNode, IHeapItem<AstarGridNode>
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
		public Vector2 WorldPosition => SourceGridNode.WorldPosition;

		/// <inheritdoc />
		public ushort GridX => SourceGridNode.GridX;

		/// <inheritdoc />
		public ushort GridY => SourceGridNode.GridY;
		private int FCost => GCost + HCost;
		public ISourceGridNode SourceGridNode { get; }

		/// <inheritdoc />
		public byte MovementPenalty
		{
			get => SourceGridNode.MovementPenalty;
		    set => throw new NotSupportedException("You can only change this in the source node");
		}

		/// <inheritdoc />
		public GridClearance[] Clearances
		{
			get => SourceGridNode.Clearances;
		    set => throw new NotSupportedException("You can only change this in the source node");
		}

		/// <inheritdoc />
		public int GetTrueClearance(PathfindaxCollisionCategory collisionCategory)
		{
			return SourceGridNode.GetTrueClearance(collisionCategory);
		}

		public AstarGridNode(ISourceGridNode source)
		{
			SourceGridNode = source;
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
