using System;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Components;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	/// <summary>
	/// Spams path requests as a example
	/// Use the <see cref="TopLeftCorner"/> and <see cref="BottomRightCorner"/> properties to control where it will spam the path requests.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class PathfindaxPathSpammerComponent : Component, ICmpUpdatable, IPathProvider
	{
		[EditorHintRange(1, byte.MaxValue)]
		public byte AgentSize { get; set; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public Point2 TopLeftCorner { get; set; }
		public Point2 BottomRightCorner { get; set; }
		public IPath Path { get; private set; }

		[EditorHintRange(1, 1000)]
		public int FramesBetweenRequest { get; set; }

		public AstarPathfinderComponent PathfinderComponent { get; set; }
		private readonly Random _randomGenerator = new Random();
		private int _frameCounter;

		void ICmpUpdatable.OnUpdate()
		{
			if (_frameCounter >= FramesBetweenRequest)
			{
				var start = new Vector2(_randomGenerator.Next(TopLeftCorner.X, BottomRightCorner.X), _randomGenerator.Next(TopLeftCorner.Y, BottomRightCorner.Y));
				var end = new Vector2(_randomGenerator.Next(TopLeftCorner.X, BottomRightCorner.X), _randomGenerator.Next(TopLeftCorner.Y, BottomRightCorner.Y));
				var request = PathfinderComponent.Pathfinder.RequestPath(start, end, CollisionCategory, AgentSize);
				request.AddCallback(PathSolved);
				_frameCounter = 0;
			}
			_frameCounter++;
		}

		private void PathSolved(PathRequest<NodePath> pathRequest)
		{
			Path = pathRequest.CompletedPath;
		}
	}
}
