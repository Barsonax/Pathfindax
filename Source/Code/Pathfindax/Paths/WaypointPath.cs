using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Paths
{
	public class WaypointPath : IWaypointPath
	{
		public Vector2[] Path { get; }
		public Transformer Transformer { get; }

		private int _waypointIndex;

		public WaypointPath(DefinitionNode[] definitionNodes, int[] path, Transformer transformer)
		{
			Path = path.Select(i => definitionNodes[i].Position).ToArray();
			Transformer = transformer;
		}

		public Vector2 GetHeading(Vector3 currentPosition)
		{
			return GetHeading(new Vector2(currentPosition.X, currentPosition.Y));
		}

		public Vector2 GetHeading(Vector2 currentPosition)
		{
			var waypoint = Transformer.ToWorld(Path[_waypointIndex]);
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
			return string.Join(", ", Path);
		}

		public float GetPathLength()
		{
			if (Path.Length == 0) return 0f;
			var euclideanDistance = new EuclideanDistance();
			var length = 0f;
			var previousWaypoint = Path[0];
			for (var i = 1; i < Path.Length; i++)
			{
				var waypoint = Path[i];
				length += euclideanDistance.GetDistance(previousWaypoint, waypoint);
				previousWaypoint = waypoint;
			}
			return length;
		}

		public static WaypointPath GetEmptyPath(IPathfindNodeNetwork nodeNetwork, int pathStart)
		{
			return new WaypointPath(nodeNetwork.DefinitionNodeNetwork.NodeArray, new[] { pathStart }, nodeNetwork.DefinitionNodeNetwork.Transformer);
		}

		public IEnumerator<Vector2> GetEnumerator()
		{
			foreach (var vector2 in Path)
			{
				yield return vector2;
			}
		}

		IEnumerator IEnumerable.GetEnumerator()
		{
			return GetEnumerator();
		}
	}
}
