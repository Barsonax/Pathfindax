using System;
using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine
{
	public class PathRequest
	{
		public PositionF PathStart;
		public PositionF PathEnd;
		public float Clearance;
		public Action<CompletedPath> Callback;

		public PathRequest(Action<CompletedPath> callback, PositionF start, PositionF end, float clearance)
		{
			PathStart = start;
			PathEnd = end;
			Clearance = clearance;
			Callback = callback;
		}
	}
}
