namespace Pathfindax.Graph
{
	public enum GenerateNodeGridConnections
	{
		/// <summary>
		/// Generate no neighbours.
		/// </summary>
		None = 0,

		/// <summary>
		/// Generate connections to all neighbours of a node except diagonal.
		/// </summary>
		NoDiagonal = 10,

		/// <summary>
		/// Generate connections to all neighbours of a node.
		/// </summary>
		All = 20,
	}
}