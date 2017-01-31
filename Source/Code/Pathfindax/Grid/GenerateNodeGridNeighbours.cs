namespace Pathfindax.Grid
{
	public enum GenerateNodeGridNeighbours
	{
		/// <summary>
		/// Generate no neighbours.
		/// </summary>
		None = 0,

		/// <summary>
		/// Generate neighbours except diagonal neighbours
		/// </summary>
		NoDiagonal = 10,

		/// <summary>
		/// Generate all neighbours
		/// </summary>
		All = 20,
	}
}