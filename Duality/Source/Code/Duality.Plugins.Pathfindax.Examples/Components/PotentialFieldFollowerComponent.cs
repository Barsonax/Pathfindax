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
	public class PotentialFieldFollowerComponent : Component, ICmpUpdatable, ICmpInitializable, IPathProvider, IPathReceiver<PotentialField>
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

		public PathfindaxCollisionCategory CollisionCategory => _collisionCategory;

		public Vector3 Pos => GameObj.Transform.Pos;

		[DontSerialize]
		private PathfindaxCollisionCategory _collisionCategory;

		void ICmpInitializable.OnActivate()
		{
			if (DynamicPotentialFieldComponent.PotentialField != null)
			{
				DynamicPotentialFieldComponent.PotentialField.AddPotentialFunction(this,
					new QuadraticPotentialFunction(() => CurrentPosition, (float) AgentSize / 2 + 1.0f,
						1.2f * AgentSize));
				_rigidBody = GameObj.GetComponent<RigidBody>();
				_collisionCategory = (PathfindaxCollisionCategory) _rigidBody.CollisionCategory;
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
			}
		}

		void ICmpInitializable.OnDeactivate()
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
			var targetPos = Camera.GetWorldPos(e.Pos);
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

		public void SetPath(PotentialField completedPath, PathRequestStatus status)
		{
			switch (status)
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

