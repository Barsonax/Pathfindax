using Pathfindax.Collections;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a node that can be used with the A* algorithm.
	/// </summary>
	public class AstarNode : IHeapItem<AstarNode>, INode<AstarNode>
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
		public PositionF WorldPosition => _sourceNode.WorldPosition;
		public NodeConnection<AstarNode>[] Connections { get; set; }

		/// <summary>
		/// The movement penalty for this node. This can be used to make the pathfinder try to avoid certain nodes.
		/// </summary>
		public byte MovementPenalty => _sourceNode.MovementPenalty;

		public PathfindaxCollisionCategory CollisionCategory => _sourceNode.CollisionCategory;

		private readonly Node _sourceNode;

		public AstarNode(Node sourceNode)
		{
			_sourceNode = sourceNode;
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
	}
}
