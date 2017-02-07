using System;
using Pathfindax.Nodes;
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
		/// WARNING: Currently not used.
		/// </summary>
		public readonly float Clearance;

		/// <summary>
		/// The CollisionLayer. Sometimes you can have multiple nodenetworks. One for agents that have to move over land and one for agents that can move over land and sea for instance.
		/// </summary>
		public readonly PathfindaxCollisionCategory CollsionLayer;

		/// <summary>
		/// The callback that will be called after the pathfinder finds a path or cannot find one.
		/// </summary>
		public readonly Action<CompletedPath> Callback;

		public PathRequest(Action<CompletedPath> callback, PositionF start, PositionF end, float clearance = 1, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None)
		{
			PathStart = start;
			PathEnd = end;
			Clearance = clearance;
			CollsionLayer = collisionLayer;
			Callback = callback;
		}
	}
}
