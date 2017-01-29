using System;
using Duality;
using Duality.Drawing;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;

namespace Pathfindax.Duality.Components
{
	public class PathfindaxTestComponent : Component, ICmpUpdatable, ICmpRenderer, ICmpInitializable
	{
		public PositionF[] Path { get; private set; }
		public float BoundRadius { get; }
		private PathfinderProxy _pathfinderProxy;

		private readonly Random _randomGenerator = new Random();
		void ICmpUpdatable.OnUpdate()
		{
			var start = new PositionF(_randomGenerator.Next(0, (int)_pathfinderProxy.WorldSize.X), _randomGenerator.Next(0, (int)_pathfinderProxy.WorldSize.Y));
			var end = new PositionF(_randomGenerator.Next(0, (int)_pathfinderProxy.WorldSize.X), _randomGenerator.Next(0, (int)_pathfinderProxy.WorldSize.Y));
			var request = new PathRequest(PathSolved, start, end, 1);
			_pathfinderProxy.RequestPath(request);
		}

		private void PathSolved(CompletedPath completedPath)
		{
			Path = completedPath.Path;
		}

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
	(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
	(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (Path != null)
			{
				var canvas = new Canvas(device);
				canvas.State.ColorTint = ColorRgba.Red;
				foreach (var position in Path)
				{
					canvas.FillCircle(position.X, position.Y, 0.4f);
				}
			}
		}

		public void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				_pathfinderProxy = new PathfinderProxy();
			}
		}

		public void OnShutdown(ShutdownContext context)
		{

		}
	}
}
