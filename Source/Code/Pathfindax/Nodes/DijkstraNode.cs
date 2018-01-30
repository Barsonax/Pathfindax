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