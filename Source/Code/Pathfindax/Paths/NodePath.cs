using System.Linq;
using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Paths
{
	public class NodePath : IPath
	{
		public Vector2 this[int i] => Transformer.ToWorld(_definitionNodes[Path[i]].Position);
		public int[] Path { get; }
		public readonly Transformer Transformer;
		private int _waypointIndex;
		private readonly DefinitionNode[] _definitionNodes;

		public NodePath(DefinitionNode[] definitionNodes, int[] path, Transformer transformer)
		{
			Path = path;
			Transformer = transformer;
			_definitionNodes = definitionNodes;
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
			if (Path == null) return base.ToString();
			return string.Join(", ", Path.Select(x => _definitionNodes[x].Position.ToString()));
		}

		public float GetPathLength()
		{
			if (Path.Length == 0) return 0f;
			var euclideanDistance = new EuclideanDistance();
			var length = 0f;
			var previousWaypoint = _definitionNodes[Path[0]].Position;
			for (var i = 1; i < Path.Length; i++)
			{
				var waypoint = _definitionNodes[Path[i]].Position;
				length += euclideanDistance.GetDistance(previousWaypoint, waypoint);
				previousWaypoint = waypoint;
			}
			return length;
		}
	}
}
