using System;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Components;
using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	/// <summary>
	/// Spams path requests as a example
	/// Use the <see cref="TopLeftCorner"/> and <see cref="BottomRightCorner"/> properties to control where it will spam the path requests.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class PathfindaxPathSpammerComponent : Component, ICmpUpdatable, ICmpInitializable, IPathProvider
	{
		[EditorHintRange(1, byte.MaxValue)]
		public byte AgentSize { get; set; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public Point2 TopLeftCorner { get; set; }
		public Point2 BottomRightCorner { get; set; }
		public Vector2[] Path { get; private set; }

		[EditorHintRange(1, 1000)]
		public int FramesBetweenRequest { get; set; }

		private PathfinderProxy _pathfinderProxy;
		private readonly Random _randomGenerator = new Random();
		private int _frameCounter;

		void ICmpInitializable.OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				_pathfinderProxy = new PathfinderProxy();
			}
		}

		void ICmpInitializable.OnShutdown(ShutdownContext context) { }

		void ICmpUpdatable.OnUpdate()
		{
			if (_frameCounter >= FramesBetweenRequest)
			{
				var start = new Vector2(_randomGenerator.Next(TopLeftCorner.X, BottomRightCorner.X), _randomGenerator.Next(TopLeftCorner.Y, BottomRightCorner.Y));
				var end = new Vector2(_randomGenerator.Next(TopLeftCorner.X, BottomRightCorner.X), _randomGenerator.Next(TopLeftCorner.Y, BottomRightCorner.Y));
				var request = _pathfinderProxy.RequestPath(start, end, CollisionCategory, AgentSize);
				request.AddCallback(PathSolved);
				_frameCounter = 0;
			}
			_frameCounter++;
		}

		private void PathSolved(PathRequest pathRequest)
		{
			Path = pathRequest.CompletedPath?.Path;
		}
	}
}
