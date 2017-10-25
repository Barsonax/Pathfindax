using Duality;
using Pathfindax.Collections;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a node that can be used with the A* algorithm.
	/// </summary>
	public class AstarNode : IHeapItem<AstarNode>, INode
	{
		/// <summary>
		/// Used to retrace the path in the A* algorithm.
		/// </summary>
		public AstarNode Parent { get; set; }

		/// <summary>
		/// The cost calculated by the A* heuristic
		/// </summary>
		public float HCost { get; set; }

		/// <summary>
		/// The cost to the targetnode
		/// </summary>
		public float GCost { get; set; }

		private float FCost => GCost + HCost;

		public int HeapIndex { get; set; }
		public Vector2 WorldPosition => SourceNode.WorldPosition;
		public NodeConnection<AstarNode>[] Connections { get; set; }

		/// <summary>
		/// The movement penalty for this node. This can be used to make the pathfinder try to avoid certain nodes.
		/// </summary>
		public byte MovementPenalty => SourceNode.MovementPenalty;

		public PathfindaxCollisionCategory CollisionCategory => SourceNode.CollisionCategory;

		public SourceNode SourceNode { get; }

		public AstarNode(SourceNode sourceNode)
		{
			SourceNode = sourceNode;
		}

		public int CompareTo(AstarNode other)
		{
			var compare = FCost.CompareTo(other.FCost);
			if (compare == 0)
			{
				compare = HCost.CompareTo(other.HCost);
			}
			return -compare;
		}

		public override string ToString()
		{
			return $"{WorldPosition.X}:{WorldPosition.Y}";
		}
	}
}
