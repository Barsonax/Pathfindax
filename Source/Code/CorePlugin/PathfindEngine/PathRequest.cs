using System;
using Duality;
using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine
{
	public class PathRequest
	{
		public PositionF PathStart;
		public PositionF PathEnd;
		public float Clearance;
		public Action<CompletedPath> Callback;

		public PathRequest(Action<CompletedPath> callback, Vector2 start, Vector2 end, float clearance)
		{
			PathStart = new PositionF(start.X, start.Y);
			PathEnd = new PositionF(end.X, end.Y);
			Clearance = clearance;
			Callback = callback;
		}
	}
}
