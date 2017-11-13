using Duality.Components;
using Duality.Editor;
using Duality.Input;
using Duality.Plugins.Pathfindax.Components;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class PathFollowerComponent : Component, ICmpUpdatable, ICmpInitializable, IPathProvider
	{
		[EditorHintRange(0, float.MaxValue)]
		public float MovementSpeed { get; set; } = 1f;
		[EditorHintRange(1, byte.MaxValue)]
		public byte AgentSize { get; set; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public Camera Camera { get; set; }
		public IPath Path { get; private set; }
		private PathfinderProxy<NodePath> _pathfinderProxy;

		void ICmpInitializable.OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
				_pathfinderProxy = new PathfinderProxy<NodePath>();
			}
		}

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
		}

		void ICmpUpdatable.OnUpdate()
		{
			if (Path != null)
			{
				var heading = Path.GetHeading(GameObj.Transform.Pos);
				if (heading.Length <= MovementSpeed)
					Path.NextWaypoint();
				GameObj.Transform.MoveBy(Mathf.Clamp(heading.Normalized * Time.TimeMult * MovementSpeed, heading.Length));
			}
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var targetPos = Camera.GetSpaceCoord(e.Position);
			var request = _pathfinderProxy.RequestPath(GameObj.Transform.Pos, targetPos, CollisionCategory, AgentSize);
			request.AddCallback(OnRequestCompleted);
		}

		private void OnRequestCompleted(PathRequest<NodePath> pathRequest)
		{
			Path = pathRequest.CompletedPath;
		}
	}
}
