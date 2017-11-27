using System.Linq;
using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.Paths
{
	public class NodePath : IPath
	{
		public Vector2 this[int i] => Path[i].Position + Offset;
		public DefinitionNode[] Path { get; }
		public readonly Vector2 Offset;
		private int _waypointIndex;

		public NodePath(DefinitionNode[] path, Vector2 offset = default(Vector2))
		{
			Path = path;
			Offset = offset;
		}

		public Vector2 GetHeading(Vector3 currentPosition)
		{
			return GetHeading(new Vector2(currentPosition.X, currentPosition.Y));
		}

		public Vector2 GetHeading(Vector2 currentPosition)
		{
			var waypoint = Path[_waypointIndex].Position + Offset;
			return waypoint - currentPosition;

		}

		public bool NextWaypoint()
		{
			if (_waypointIndex < Path.Length - 1)
			{
				_waypointIndex++;
				return false;
			}
			return true;
		}

		public override string ToString()
		{
			return string.Join(", ", Path.Select(x => x.Position.ToString()));
		}
	}
}
