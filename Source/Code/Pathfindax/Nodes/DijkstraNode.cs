using Duality;
using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	public class DijkstraNode : IHeapItem<DijkstraNode>, ICollisionLayerNode
	{
		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost { get; set; }
		public DefinitionNode DefinitionNode { get; }
		public float Clearance { get; set; }
		public int HeapIndex { get; set; }
		public Point2 GridPosition { get; }

		public DijkstraNode(DefinitionNode definitionNode, Point2 gridPosition)
		{
			DefinitionNode = definitionNode;
			GridPosition = gridPosition;
		}

		public int CompareTo(DijkstraNode other)
		{
			return -GCost.CompareTo(other.GCost);
		}
	}
}