using System;
using Duality.Components;
using Duality.Drawing;
using Duality.Editor;
using Duality.Input;
using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	public class MouseClickPathfinder : Component, ICmpRenderer, ICmpInitializable
	{
		private PathfinderProxy _pathfinderProxy;
		public byte Clearance { get; set; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public PositionF[] Path { get; private set; }


		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; }

		public Camera Camera { get; set; }

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
				canvas.State.ZOffset = -10;

				for (int index = 0; index < Path.Length; index++)
				{
					if (index == 0) canvas.State.ColorTint = ColorRgba.Green;
					else if (index == Path.Length - 1) canvas.State.ColorTint = ColorRgba.Blue;
					else canvas.State.ColorTint = ColorRgba.Red;
					var position = Path[index];
					canvas.FillCircle(position.X, position.Y, 10f);
				}

				canvas.State.ColorTint = ColorRgba.Red;
				for (int i = 1; i < Path.Length; i++)
				{
					var from = Path[i - 1];
					var to = Path[i];
					canvas.DrawLine(from.X, from.Y, 0, to.X, to.Y, 0);
				}
			}
		}

		public void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				DualityApp.Mouse.Move += Mouse_Move;
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
				_pathfinderProxy = new PathfinderProxy();
			}
		}

		private PositionF? _pathStart;
		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			if (_pathStart == null)
			{
				var mouseWorldPosition = Camera.GetSpaceCoord(e.Position);
				_pathStart = new PositionF(mouseWorldPosition.X, mouseWorldPosition.Y);
			}
			else
			{
				Path = null;
				_pathStart = null;
			}
		}

		private void Mouse_Move(object sender, MouseMoveEventArgs e)
		{
			if (_pathStart != null)
			{
				var mouseWorldPosition = Camera.GetSpaceCoord(e.Position);
				var pathEnd = new PositionF(mouseWorldPosition.X, mouseWorldPosition.Y);
				var request = new PathRequest(PathSolved, _pathStart.Value, pathEnd, Clearance, CollisionCategory);
				_pathfinderProxy.RequestPath(request);
			}
		}

		public void OnShutdown(ShutdownContext context)
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
			DualityApp.Mouse.Move -= Mouse_Move;
		}
	}
}
