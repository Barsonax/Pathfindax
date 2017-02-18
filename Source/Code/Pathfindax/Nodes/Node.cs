using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	public class Node : INode<Node>
	{
		public PositionF WorldPosition { get; }
		public NodeConnection<Node>[] Connections { get; set; }

		/// <summary>
		/// The movement penalty for this node. This can be used to make the pathfinder try to avoid certain nodes.
		/// </summary>
		public byte MovementPenalty { get; set; }

		public PathfindaxCollisionCategory CollisionCategory { get; set; }

		public Node(PositionF worldPosition)
		{
			WorldPosition = worldPosition;
		}
	}
}