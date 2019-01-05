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

		[DontSerialize]
		private RigidBody _rigidBody;

		[DontSerialize]
		private PathfindaxCollisionCategory _collisionCategory;

		void ICmpInitializable.OnActivate()
		{
			_rigidBody = GameObj.GetComponent<RigidBody>();
			_collisionCategory = (PathfindaxCollisionCategory)_rigidBody.CollisionCategory;
			DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
		}

		void ICmpInitializable.OnDeactivate()
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
		}

		void ICmpUpdatable.OnUpdate()
		{
			if (Path != null)
			{
				var heading = Path.GetHeading(GameObj.Transform.Pos);
				_rigidBody.ApplyWorldForce(PathfindaxMathF.Clamp(heading.Normalized * MovementSpeed, heading.Length));
			}
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var targetPos = Camera.GetWorldPos(e.Pos);
			var request = PathfinderComponent.Pathfinder.RequestPath(GameObj.Transform.Pos, targetPos, _collisionCategory, AgentSize);
			request.AddCallback(pathrequest =>
			{
				Path = pathrequest.CompletedPath;
			});
		}
	}
}
