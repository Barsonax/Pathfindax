using System.Collections.Generic;
using Duality;

namespace Pathfindax.Paths
{
	public interface IWaypointPath : IPath, IEnumerable<Vector2>
	{
		/// <summary>
		/// 
		/// </summary>
		/// <returns><c>True</c> if the end of the path has been reached</returns>
		bool NextWaypoint();
	}
}
