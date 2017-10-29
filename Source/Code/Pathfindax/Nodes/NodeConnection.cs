namespace Pathfindax.Nodes
{
	/// <summary>
	/// Represents a connection to another node.
	/// </summary>
	public struct NodeConnection
	{
		/// <summary>
		/// Where this connection is going to.
		/// </summary>
		public readonly NodePointer To;

		/// <summary>
		/// The collisions in this connection
		/// </summary>
		public PathfindaxCollisionCategory CollisionCategory;

		/// <summary>
		/// Creates a new <see cref="NodeConnection"/>.
		/// </summary>
		/// <param name="to">Where this connection is going to</param>
		/// <param name="collisionCategory">The <see cref="PathfindaxCollisionCategory"/> of this <see cref="NodeConnection"/></param>
		public NodeConnection(NodePointer to, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None)
		{
			To = to;
			CollisionCategory = collisionCategory;
		}

		/// <summary>
		/// Creates a new <see cref="NodeConnection"/>.
		/// </summary>
		/// <param name="to">Where this connection is going to</param>
		/// <param name="collisionCategory">The <see cref="PathfindaxCollisionCategory"/> of this <see cref="NodeConnection"/></param>
		public NodeConnection(ISourceNode to, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None)
		{
			To = to.Index;
			CollisionCategory = collisionCategory;
		}

		public override string ToString()
		{
			return $"Connection to {To}";
		}
	}
}
