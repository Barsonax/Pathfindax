using Pathfindax.Nodes;

namespace Pathfindax.Paths
{
	public interface IWaypointPath : IPath
	{
		/// <summary>
		/// 
		/// </summary>
		/// <returns><c>True</c> if the end of the path has been reached</returns>
		bool NextWaypoint();
		int[] Path { get; }
		DefinitionNode[] DefinitionNodes { get; }
	}
}
