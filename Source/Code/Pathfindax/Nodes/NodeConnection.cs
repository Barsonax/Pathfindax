using System;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a connection to another To
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public class NodeConnection<TNode>
		where TNode : INode
	{
		public TNode From;

		/// <summary>
		/// The To where this connection is going to
		/// </summary>
		public TNode To;

		/// <summary>
		/// The collisions in this connection
		/// </summary>
		public PathfindaxCollisionCategory CollisionCategory;

		public NodeConnection(TNode from, TNode To, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None)
		{
			if(To == null) throw new ArgumentException("To cannot be null");
			this.To = To;
			this.From = from;
			CollisionCategory = collisionCategory;
		}

		public override string ToString()
		{
			return $"Connection from {From.Position} to {To.Position}";
		}
	}
}
