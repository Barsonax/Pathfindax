using System;
using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	public struct DijkstraNode : IIndexHeapItem<DijkstraNode>, ICollisionLayerNode
	{
		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost;
		public float Clearance;

		DefinitionNode ICollisionLayerNode.DefinitionNode => throw new NotImplementedException();
		float ICollisionLayerNode.Clearance
		{
			get => Clearance;
			set => Clearance = value;
		}

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