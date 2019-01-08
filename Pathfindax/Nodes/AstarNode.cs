using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a node that can be used with the A* algorithm.
	/// </summary>
	public struct AstarNode : IPriority
	{
		/// <summary>
		/// Used to retrace the path in the A* algorithm.
		/// </summary>
		public int Parent { get; set; }

		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost { get; set; }

		public float Clearance { get; set; }
		public float Priority { get; set; }
	}
}
