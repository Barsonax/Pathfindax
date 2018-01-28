using System.Runtime.CompilerServices;
using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	public struct DijkstraNode : IIndexHeapItem<DijkstraNode>, ICollisionLayerNode
	{
		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost;
		public DefinitionNode DefinitionNode;
		public float Clearance;

		DefinitionNode ICollisionLayerNode.DefinitionNode => DefinitionNode;
		float ICollisionLayerNode.Clearance
		{
			get => Clearance;
			set => Clearance = value;
		}

		public DijkstraNode(DefinitionNode definitionNode)
		{
			DefinitionNode = definitionNode;
			GCost = 0f;
			Clearance = float.MaxValue;
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