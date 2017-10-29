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
		public NodePointer Parent { get; set; }

		/// <summary>
		/// The cost calculated by the A* heuristic
		/// </summary>
		public float HCost { get; set; }

		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost { get; set; }

		/// <inheritdoc />
		public int HeapIndex { get; set; }

		public SourceGridNode SourceGridNode { get; }
		ISourceGridNode IGridNode.SourceGridNode => SourceGridNode;
		ISourceNode INode.SourceNode => SourceGridNode;

		private float FCost => GCost + HCost;

		public AstarGridNode(SourceGridNode source)
		{
			SourceGridNode = source;
			Parent = NodePointer.NullPointer;
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
