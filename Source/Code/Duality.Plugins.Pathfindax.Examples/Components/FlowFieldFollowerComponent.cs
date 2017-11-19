using Duality.Components;
using Duality.Components.Physics;
using Duality.Editor;
using Duality.Input;
using Duality.Plugins.Pathfindax.Components;
using Pathfindax.Nodes;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	[RequiredComponent(typeof(RigidBody))]
	[ExecutionOrder(ExecutionRelation.After, typeof(IDualityPathfinderComponent))]
	public class FlowFieldFollowerComponent : Component, ICmpUpdatable, ICmpInitializable, IPathProvider
	{
		[EditorHintRange(0, float.MaxValue)]
		public float MovementSpeed { get; set; } = 1f;
		[EditorHintRange(1, byte.MaxValue)]
		public byte AgentSize { get; set; }		
		public Camera Camera { get; set; }
		IPath IPathProvider.Path => Path;

		public FlowField Path { get; private set; }
		public Vector2 CurrentPosition => new Vector2(GameObj.Transform.Pos.X, GameObj.Transform.Pos.Y);
		public FlowFieldPathfinderComponent PathfinderComponent { get; set; }
		private RigidBody _rigidBody;
		private PathfindaxCollisionCategory _collisionCategory;

		void ICmpInitializable.OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				_rigidBody = GameObj.GetComponent<RigidBody>();
				_collisionCategory = (PathfindaxCollisionCategory) _rigidBody.CollisionCategory;
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
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
				_rigidBody.ApplyWorldForce(PathfindaxMathF.Clamp(heading.Normalized * MovementSpeed, heading.Length));
			}
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var targetPos = Camera.GetSpaceCoord(e.Position);
			var request = PathfinderComponent.Pathfinder.RequestPath(GameObj.Transform.Pos, targetPos, _collisionCategory, AgentSize);
			request.AddCallback(pathrequest =>
			{
				Path = pathrequest.CompletedPath;
			});
		}
	}
}
