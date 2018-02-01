using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	public struct DijkstraNode : IIndexHeapItem<DijkstraNode>
	{
		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost;
		public float Clearance;

		public bool CompareTo(in DijkstraNode other)
		{
			return GCost > other.GCost;
		}
	}
}