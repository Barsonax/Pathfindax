using System.Linq;
using Duality;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Paths
{
	public class NodePath : IPath
	{
		public Vector2 this[int i] => Transformer.ToWorld(Path[i].Position);
		public DefinitionNode[] Path { get; }
		public readonly Transformer Transformer;
		private int _waypointIndex;

		public NodePath(DefinitionNode[] path, Transformer transformer)
		{
			Path = path;
			Transformer = transformer;
		}

		public Vector2 GetHeading(Vector3 currentPosition)
		{
			return GetHeading(new Vector2(currentPosition.X, currentPosition.Y));
		}

		public Vector2 GetHeading(Vector2 currentPosition)
		{
			var waypoint = this[_waypointIndex];
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
