using System.Collections.Generic;
using Duality;

namespace Pathfindax.Nodes
{
	public class SourceNode : ISourceNode
	{
		public Vector2 WorldPosition { get; }
		public List<NodeConnection<SourceNode>> Connections { get; private set; }

		/// <summary>
		/// The movement penalty for this node. This can be used to make the pathfinder try to avoid certain nodes.
		/// </summary>
		public byte MovementPenalty { get; set; }

		public PathfindaxCollisionCategory CollisionCategory { get; set; }

		public int ArrayIndex { get; }

		public SourceNode(Vector2 worldPosition, int arrayIndex)
		{
			WorldPosition = worldPosition;
			Connections = new List<NodeConnection<SourceNode>>();
			ArrayIndex = arrayIndex;
		}

		public override string ToString()
		{
			return $"{WorldPosition.X}:{WorldPosition.Y}";
		}
	}
}