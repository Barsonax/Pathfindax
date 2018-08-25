using Duality.Components;
using Duality.Components.Physics;
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
	[RequiredComponent(typeof(RigidBody))]
	public class PotentialFieldFollowerComponent : Component, ICmpUpdatable, ICmpInitializable, IPathProvider
	{
		[EditorHintRange(0, float.MaxValue)]
		public float MovementSpeed { get; set; } = 1f;

		[EditorHintRange(1, byte.MaxValue)]
		public byte AgentSize { get; set; }

		public Camera Camera { get; set; }
		public DynamicPotentialFieldComponent DynamicPotentialFieldComponent { get; set; }
		public PotentialFieldPathfinderComponent PathfinderComponent { get; set; }
		public Vector2 CurrentPosition => new Vector2(GameObj.Transform.Pos.X, GameObj.Transform.Pos.Y);

		IPath IPathProvider.Path => _path;

		[DontSerialize]
		private PotentialField _path;

		[DontSerialize]
		private RigidBody _rigidBody;

		[DontSerialize]
		private PathfindaxCollisionCategory _collisionCategory;

		void ICmpInitializable.OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				DynamicPotentialFieldComponent.PotentialField.AddPotentialFunction(this,
					new QuadraticPotentialFunction(() => CurrentPosition, (float)AgentSize / 2 + 1.0f, 1.2f * AgentSize));
				_rigidBody = GameObj.GetComponent<RigidBody>();
				_collisionCategory = (PathfindaxCollisionCategory)_rigidBody.CollisionCategory;
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
			}
		}

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
			DynamicPotentialFieldComponent?.PotentialField?.RemovePotentialFunction(this);
		}

		void ICmpUpdatable.OnUpdate()
		{
			if (_path != null)
			{
				var heading = _path.GetHeading(GameObj.Transform.Pos);
				_rigidBody.ApplyWorldForce(heading * MovementSpeed);
			}
		}

		private async void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var targetPos = Camera.GetSpaceCoord(e.Position);
			var request = PathfinderComponent.Pathfinder.RequestPath(GameObj.Transform.Pos, targetPos, _collisionCategory, AgentSize);
			var completedPath = await request;
			switch (request.Status)
			{
				case PathRequestStatus.Solved:
					var arrays = completedPath.PotentialArray.Arrays.Append(DynamicPotentialFieldComponent.PotentialField.Array);
					_path = new PotentialField(DynamicPotentialFieldComponent.PotentialField.GridTransformer, completedPath.TargetNode, arrays);
					break;
				case PathRequestStatus.NoPathFound:
					_path = new PotentialField(DynamicPotentialFieldComponent.PotentialField.GridTransformer, completedPath.TargetNode, DynamicPotentialFieldComponent.PotentialField.Array);
					break;
			}
		}
	}
}

