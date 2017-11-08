using Duality;

namespace Pathfindax.PathfindEngine
{
    public interface IPath
    {
	    bool GetWaypoint(Vector3 currentPosition, out Vector2 wayPoint, float minimumDistance = 0.1f);

		Vector2 GetWaypoint(Vector2 worldPosition);
	}
}
