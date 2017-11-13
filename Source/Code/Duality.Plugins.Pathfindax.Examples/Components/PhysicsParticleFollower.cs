using Duality.Components;
using Duality.Components.Physics;
using Duality.Editor;
using Duality.Input;
using Duality.Plugins.Pathfindax.Components;
using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	[RequiredComponent(typeof(RigidBody))]
	public class PhysicsParticleFollower : Component, ICmpUpdatable, ICmpInitializable, IPathProvider
	{
		[EditorHintRange(0, float.MaxValue)]
		public float MovementSpeed { get; set; } = 1f;
		[EditorHintRange(1, byte.MaxValue)]
		public byte AgentSize { get; set; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public Camera Camera { get; set; }
		public IPath Path { get; private set; }
		private PotentialFieldPathfinderProxy _pathfinderProxy;
		private RigidBody _rigidBody;

		void ICmpInitializable.OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
				_pathfinderProxy = new PotentialFieldPathfinderProxy();
				_rigidBody = GameObj.GetComponent<RigidBody>();
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
				_rigidBody.ApplyWorldForce(Mathf.Clamp(heading.Normalized * MovementSpeed, heading.Length));
			}
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var targetPos = Camera.GetSpaceCoord(e.Position);
			var request = _pathfinderProxy.RequestPath(GameObj.Transform.Pos, targetPos, CollisionCategory, AgentSize);
			request.AddCallback(OnRequestCompleted);
		}

		private void OnRequestCompleted(PathRequest<PotentialField> pathRequest)
		{
			Path = pathRequest.CompletedPath;
		}
	}
}
