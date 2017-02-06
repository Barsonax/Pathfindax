using System;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a connection to another node
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public class NodeConnection<TNode>
		where TNode : INode
	{
		/// <summary>
		/// The node where this connection is going to
		/// </summary>
		public TNode Node;

		/// <summary>
		/// The collisions in this connection
		/// </summary>
		public PathfindaxCollisionCategory CollisionCategory;

		public NodeConnection(TNode node, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None)
		{
			if(node == null) throw new ArgumentException("Node cannot be null");
			Node = node;
			CollisionCategory = collisionCategory;
		}
	}
}
