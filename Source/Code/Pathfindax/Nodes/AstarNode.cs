using System;
using System.Dynamic;
using System.Runtime.CompilerServices;
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

		public int CompareTo(AstarNode other)
		{
			return CompareToCore(other);
		}

		public int CompareTo(in AstarNode other)
		{
			return CompareToCore(other);
		}

		[MethodImpl(MethodImplOptions.AggressiveInlining)]
		private int CompareToCore(in AstarNode other)
		{
			var compare = (HCost + GCost).CompareTo(other.HCost + other.GCost);
			if (compare == 0)
			{
				compare = HCost.CompareTo(other.HCost);
			}
			return -compare;
		}
	}
}
