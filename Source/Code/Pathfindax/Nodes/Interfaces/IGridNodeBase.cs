namespace Pathfindax.Nodes
{
	public interface ISourceGridNode : IGridNodeBase, ISourceNode

	{
		/// <summary>
		/// The connections to other nodes.
		/// </summary>
		NodeConnection<ISourceGridNode>[] Connections { get; set; }
	}

	public interface IGridNodeBase : INode
	{
		/// <summary>
		/// Calculates the true clearance from the <see cref="Clearances"/> for the given <paramref name="collisionCategory"/> and returns this.
		/// </summary>
		/// <param name="collisionCategory"></param>
		/// <returns></returns>
		int GetTrueClearance(PathfindaxCollisionCategory collisionCategory);

		/// <summary>
		/// The stored clearances. Note that this is not the real clearance but a efficient way of storing them.
		/// Call <see cref="GetTrueClearance"/> if you want the real clearance
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
