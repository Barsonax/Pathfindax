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

		public int CompareTo(in DijkstraNode other)
		{
			return -GCost.CompareTo(other.GCost);
		}
	}
}