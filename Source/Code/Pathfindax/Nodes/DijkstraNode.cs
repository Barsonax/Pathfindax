using Duality;
using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	public class DijkstraNode : IRefHeapItem<DijkstraNode>, ICollisionLayerNode
	{
		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost { get; set; }
		public DefinitionNode DefinitionNode { get; }
		public float Clearance { get; set; }

		public DijkstraNode(DefinitionNode definitionNode)
		{
			DefinitionNode = definitionNode;
		}

		public int CompareTo(DijkstraNode other)
		{
			return CompareToCore(other);
		}

		public int CompareTo(in DijkstraNode other)
		{
			return CompareToCore(other);
		}

		private int CompareToCore(in DijkstraNode other)
		{
			return -GCost.CompareTo(other.GCost);
		}
	}
}