using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a node that can be used with the A* algorithm.
	/// </summary>
	public class AstarNode : INode, IHeapItem<AstarNode>
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
		private float FCost => GCost + HCost;
		public int HeapIndex { get; set; }
		public DefinitionNode DefinitionNode { get; }
		public float Clearance { get; set; }

		public AstarNode(DefinitionNode definitionNode)
		{
			DefinitionNode = definitionNode;
		}

		public int CompareTo(AstarNode other)
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
			return DefinitionNode.ToString();
		}
	}
}
