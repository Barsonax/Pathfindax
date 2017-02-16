namespace Pathfindax.Nodes
{
	public interface IGridNode : INode<IGridNode> , IGridNodeBase

	{
		
	}

	public interface IGridNodeBase : INode
	{
		/// <summary>
		/// Calculates the real clearance from the <see cref="Clearances"/> for the given <paramref name="collisionCategory"/> and returns true if this clearance is equal or less than <paramref name="neededClearance"/>
		/// </summary>
		/// <param name="collisionCategory"></param>
		/// <param name="neededClearance"></param>
		/// <returns></returns>
		bool Fits(PathfindaxCollisionCategory collisionCategory, byte neededClearance);

		/// <summary>
		/// The stored clearances. Note that this is not the real clearance but a efficient way of storing them.
		/// Call <see cref="Fits"/> if you want the real clearance
		/// </summary>
		GridClearance[] Clearances { get; set; }

		/// <summary>
		/// The movement penalty for this node. This can be used to make the pathfinder try to avoid certain nodes.
		/// </summary>
		byte MovementPenalty { get; set; }

        /// <summary>
        /// The X position in the grid in nodes
        /// </summary>
        ushort GridX { get; }

        /// <summary>
        /// The Y position in the grid in nodes
        /// </summary>
        ushort GridY { get; }
	}
}
