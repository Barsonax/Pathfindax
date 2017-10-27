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
		public int Parent { get; set; }

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

		public ISourceGridNode SourceGridNode { get; }

		/// <inheritdoc />
		public Vector2 WorldPosition => SourceGridNode.WorldPosition;

		private int FCost => GCost + HCost;

		public AstarGridNode(ISourceGridNode source)
		{
			SourceGridNode = source;
			Parent = -1;
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
			return $"X:{SourceGridNode.GridX} Y:{SourceGridNode.GridY}";
		}
	}
}
