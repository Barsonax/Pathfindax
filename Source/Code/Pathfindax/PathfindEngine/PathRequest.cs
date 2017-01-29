using System;
using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine
{
	public class PathRequest
	{
		/// <summary>
		/// The position of the start of the path
		/// </summary>
		public readonly PositionF PathStart;

		/// <summary>
		/// The position of the end of the path
		/// </summary>
		public readonly PositionF PathEnd;

		/// <summary>
		/// The amount of clearance needed
		/// </summary>
		public readonly float Clearance;

		/// <summary>
		/// The callback that will be called after the pathfinder finds a path or cannot find one.
		/// </summary>
		public readonly Action<CompletedPath> Callback;

		public PathRequest(Action<CompletedPath> callback, PositionF start, PositionF end, float clearance)
		{
			PathStart = start;
			PathEnd = end;
			Clearance = clearance;
			Callback = callback;
		}
	}
}
