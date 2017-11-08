using System;
using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.PathfindEngine
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

		public bool GetWaypoint(Vector3 currentPosition, out Vector2 wayPoint, float minimumDistance)
		{
			if (_waypointIndex < NodePath.Length)
			{
				wayPoint = NodePath[_waypointIndex].Position + Offset;
				if (MathF.Distance(currentPosition.X, currentPosition.Y, wayPoint.X, wayPoint.Y) < 0.1f)
					_waypointIndex++;
				return true;
			}
			wayPoint = NodePath[NodePath.Length - 1].Position + Offset;
			return false;
		}

		public Vector2 GetWaypoint(Vector2 worldPosition)
		{
			throw new NotSupportedException();
		}
	}
}
