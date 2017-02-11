using System;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine
{
	/// <summary>
	/// A class with all the information needed to calculate a path from A to B.
	/// </summary>
	public class PathRequest
	{
		/// <summary>
		/// The world position of the start of the path
		/// </summary>
		public PositionF PathStart;

		/// <summary>
		/// The world position of the end of the path
		/// </summary>
		public PositionF PathEnd;

		/// <summary>
		/// The size of the agent. 1 is the default value meaning that the agent occupies only 1 node.
		/// </summary>
		public readonly byte AgentSize;

		/// <summary>
		/// The CollisionLayer. Sometimes you can have multiple nodenetworks. One for agents that have to move over land and one for agents that can move over land and sea for instance.
		/// </summary>
		public readonly PathfindaxCollisionCategory CollsionLayer;

		/// <summary>
		/// The callback that will be called after the pathfinder finds a path or cannot find one.
		/// </summary>
		public readonly Action<CompletedPath> Callback;

		/// <summary>
		/// Creates a new <see cref="PathRequest"/>
		/// </summary>
		/// <param name="callback">The callback that will be called with the <see cref="CompletedPath"/> when the pathfinder has finished this <see cref="PathRequest"/></param>
		/// <param name="start">The worldcoordinates of the start of the path</param>
		/// <param name="end">The worldcoordinates of the end of the path</param>
		/// <param name="agentSize">The size of the agent in nodes</param>
		/// <param name="collisionLayer">The collision layers that this agent cannot cross</param>
		public PathRequest(Action<CompletedPath> callback, PositionF start, PositionF end, byte agentSize = 1, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None)
		{
			PathStart = start;
			PathEnd = end;
			AgentSize = agentSize;
			CollsionLayer = collisionLayer;
			Callback = callback;
		}
	}
}
