using Duality;

namespace Pathfindax.PathfindEngine
{
    public interface IPath
    {
	    Vector2 GetHeading(Vector3 currentPosition);

		Vector2 GetHeading(Vector2 currentPosition);

		/// <summary>
		/// 
		/// </summary>
		/// <returns><c>True</c> if the end of the path has been reached</returns>
	    bool NextWaypoint();
    }
}
