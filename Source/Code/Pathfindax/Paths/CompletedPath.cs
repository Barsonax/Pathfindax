using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.Paths
{
	public class CompletedPath : IPath
	{
		public Vector2 this[int i] => NodePath[i].Position + Offset;
		public DefinitionNode[] NodePath { get; }
		public readonly Vector2 Offset;
		private int _waypointIndex;

		public CompletedPath(DefinitionNode[] nodePath, Vector2 offset = default(Vector2))
		{
			NodePath = nodePath;
			Offset = offset;
		}

		public Vector2 GetHeading(Vector3 currentPosition)
		{
			return GetHeading(new Vector2(currentPosition.X, currentPosition.Y));
		}

		public Vector2 GetHeading(Vector2 currentPosition)
		{
			var waypoint = NodePath[_waypointIndex].Position + Offset;
			return waypoint - currentPosition;

		}

		public bool NextWaypoint()
		{
			if (_waypointIndex < NodePath.Length - 1)
			{
				_waypointIndex++;
				return false;
			}
			return true;
		}
	}
}
