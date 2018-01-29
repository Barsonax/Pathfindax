using System;
using System.Runtime.CompilerServices;
using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a node that can be used with the A* algorithm.
	/// </summary>
	public struct AstarNode : IIndexHeapItem<AstarNode>, ICollisionLayerNode
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

		public DefinitionNode DefinitionNode => throw new NotImplementedException();

		public float Clearance { get; set; }

		public AstarNode(DefinitionNode definitionNode)
		{
			//DefinitionNode = definitionNode;
			Parent = -1;
			HCost = 0f;
			GCost = 0f;
			Clearance = float.MaxValue;
		}

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
			var compare = (GCost + HCost).CompareTo(other.GCost + other.HCost);
			if (compare == 0)
			{
				compare = HCost.CompareTo(other.HCost);
			}
			return -compare;
		}
	}
}
