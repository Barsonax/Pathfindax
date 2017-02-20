using System.Collections.Generic;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	public class Node : INode
	{
		public PositionF WorldPosition { get; }
		public List<NodeConnection<Node>> Connections { get; private set; }

		/// <summary>
		/// The movement penalty for this node. This can be used to make the pathfinder try to avoid certain nodes.
		/// </summary>
		public byte MovementPenalty { get; set; }

		public PathfindaxCollisionCategory CollisionCategory { get; set; }

		public Node(PositionF worldPosition)
		{
			WorldPosition = worldPosition;
			Connections = new List<NodeConnection<Node>>();
		}

		public override string ToString()
		{
			return $"{WorldPosition.X}:{WorldPosition.Y}";
		}
	}
}