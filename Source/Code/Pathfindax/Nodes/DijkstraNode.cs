using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	public struct DijkstraNode : IPriorityComparable<DijkstraNode>
	{
		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost;
		public float Clearance;

		public bool HasHigherPriority(in DijkstraNode other)
		{
			return GCost < other.GCost;
		}
	}
}