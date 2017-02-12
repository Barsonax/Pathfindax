using System;

namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a connection to another <typeparamref name="TNode"></typeparamref>
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public struct NodeConnection<TNode>
		where TNode : class, INode
	{
		/// <summary>
		/// The <typeparamref name="TNode"/> where this connection is going to.
		/// </summary>
		public readonly TNode To;

		/// <summary>
		/// The collisions in this connection
		/// </summary>
		public readonly PathfindaxCollisionCategory CollisionCategory;

		/// <summary>
		/// Creates a new <see cref="NodeConnection{TNode}"/>.
		/// </summary>
		/// <param name="to">The <typeparamref name="TNode"/> where this connection is going to</param>
		/// <param name="collisionCategory">The <see cref="PathfindaxCollisionCategory"/> of this <see cref="NodeConnection{TNode}"/></param>
		public NodeConnection(TNode to, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None)
		{
			if(to == null) throw new ArgumentException("To cannot be null");
			To = to;
			CollisionCategory = collisionCategory;
		}

		public override string ToString()
		{
			return $"Connection to {To.Position}";
		}
	}
}
