using System.Runtime.CompilerServices;
using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a node that can be used with the A* algorithm.
	/// </summary>
	public struct AstarNode : IPriorityComparable<AstarNode>
	{
		/// <summary>
		/// Used to retrace the path in the A* algorithm.
		/// </summary>
		public int Parent { get; set; }

		/// <summary>
		/// The cost calculated by the A* heuristic
		/// </summary>
		public float HCost { get; set; }

		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost { get; set; }

		public float Clearance { get; set; }
		private float FCost => GCost + HCost;

		[MethodImpl(MethodImplOptions.AggressiveInlining)]
		public bool HasHigherPriority(in AstarNode other)
		{
			return other.FCost > FCost;
		}
	}
}
