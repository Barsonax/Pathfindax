using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	public struct DijkstraNode : IPriority
	{
		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float Priority { get; set; }
		public float Clearance { get; set; }
	}
}