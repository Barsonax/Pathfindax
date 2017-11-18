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
	[ExecutionOrder(ExecutionRelation.After, typeof(IDualityPathfinderComponent))]
	[ExecutionOrder(ExecutionRelation.After, typeof(DynamicPotentialFieldComponent))]
	public class PotentialFieldFollowerComponent : Component, ICmpUpdatable, ICmpInitializable, IPathProvider
	{
		[EditorHintRange(0, float.MaxValue)]
		public float MovementSpeed { get; set; } = 1f;
		[EditorHintRange(1, byte.MaxValue)]
		public byte AgentSize { get; set; }

		
		public Camera Camera { get; set; }
		IPath IPathProvider.Path => Path;
		public DynamicPotentialFieldComponent DynamicPotentialFieldComponent { get; set; }
		public PotentialFieldPathfinderComponent PathfinderComponent { get; set; }

		public AggregratedPotentialField Path { get; private set; }
		public Vector2 CurrentPosition => new Vector2(GameObj.Transform.Pos.X, GameObj.Transform.Pos.Y);

		private RigidBody _rigidBody;
		private PathfindaxCollisionCategory _collisionCategory;

		void ICmpInitializable.OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{				
				DynamicPotentialFieldComponent.PotentialField.AddPotentialFunction(this, new QuadraticPotentialFunction(() => CurrentPosition, (float)AgentSize / 2 + 1.0f, 1.2f * AgentSize));
				_rigidBody = GameObj.GetComponent<RigidBody>();
				_collisionCategory = (PathfindaxCollisionCategory) _rigidBody.CollisionCategory;
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
			if (Path != null)
			{
				var heading = Path.GetHeading(GameObj.Transform.Pos);
				if (heading.Length <= MovementSpeed)
					Path.NextWaypoint();
				_rigidBody.ApplyWorldForce(heading * MovementSpeed);
			}
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var targetPos = Camera.GetSpaceCoord(e.Position);
			var request = PathfinderComponent.Pathfinder.RequestPath(GameObj.Transform.Pos, targetPos, _collisionCategory, AgentSize);
			request.AddCallback(pathrequest =>
			{
				Path = new AggregratedPotentialField(pathrequest.CompletedPath.GridTransformer, pathrequest.CompletedPath, DynamicPotentialFieldComponent.PotentialField);
			});
		}
	}
}
