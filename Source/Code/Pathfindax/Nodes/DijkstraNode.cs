using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	public class DijkstraNode : IHeapItem<DijkstraNode>
	{
		/// <summary>
		/// Used to retrace the path in the A* algorithm.
		/// </summary>
		public NodePointer Parent { get; set; }
		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost { get; set; }
		public DefinitionNode DefinitionNode { get; }
		public float Clearance { get; set; }
		public int HeapIndex { get; set; }

		public DijkstraNode(DefinitionNode definitionNode)
		{
			DefinitionNode = definitionNode;
			Parent = NodePointer.NullPointer;
		}

		public int CompareTo(DijkstraNode other)
		{
			return -GCost.CompareTo(other.GCost);
		}
	}
}