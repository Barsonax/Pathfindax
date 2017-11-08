using Duality.Components;
using Duality.Editor;
using Duality.Input;
using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class PathFollowerComponent : Component, ICmpUpdatable, ICmpInitializable
	{
		[EditorHintRange(0, float.MaxValue)]
		public float MovementSpeed { get; set; } = 1f;
		[EditorHintRange(1, byte.MaxValue)]
		public byte AgentSize { get; set; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public Camera Camera { get; set; }
		private IPath _path;
		private PathfinderProxy _pathfinderProxy;

		void ICmpInitializable.OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
				_pathfinderProxy = new PathfinderProxy();
			}
		}

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
		}

		void ICmpUpdatable.OnUpdate()
		{
			if (_path != null && _path.GetWaypoint(GameObj.Transform.Pos, out var target))
				GameObj.Transform.MoveToAbs(Vector2.Lerp(new Vector2(GameObj.Transform.Pos.X, GameObj.Transform.Pos.Y), target, Time.TimeMult * MovementSpeed));
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var targetPos = Camera.GetSpaceCoord(e.Position);
			var request = _pathfinderProxy.RequestPath(GameObj.Transform.Pos, targetPos, CollisionCategory, AgentSize);
			request.AddCallback(OnRequestCompleted);
		}

		private void OnRequestCompleted(PathRequest pathRequest)
		{
			_path = pathRequest.CompletedPath;
		}
	}
}
