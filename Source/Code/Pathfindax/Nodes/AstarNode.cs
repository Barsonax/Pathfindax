using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a node that can be used with the A* algorithm.
	/// </summary>
	public struct AstarNode : IIndexHeapItem<AstarNode>
	{
		/// <summary>
		/// Used to retrace the path in the A* algorithm.
		/// </summary>
		public int Parent;

		/// <summary>
		/// The cost calculated by the A* heuristic
		/// </summary>
		public float HCost;

		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost;

		public float Clearance;
		private float FCost => GCost + HCost;

		public int CompareTo(in AstarNode other)
		{
			var compare = FCost.CompareTo(other.FCost);
			if (compare == 0)
			{
				compare = HCost.CompareTo(other.HCost);
			}
			return -compare;
		}
	}
}
