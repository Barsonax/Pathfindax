namespace Pathfindax.Nodes
{
	public interface ISourceGridNode : ISourceNode
	{
		/// <summary>
		/// The X position of the node in the grid.
		/// </summary>
		ushort GridX { get; }

		/// <summary>
		/// The Y position of the node in the grid.
		/// </summary>
		ushort GridY { get; }
	}
}