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
	public class PhysicsParticleFollower : Component, ICmpUpdatable, ICmpInitializable, IPathProvider
	{
		[EditorHintRange(0, float.MaxValue)]
		public float MovementSpeed { get; set; } = 1f;
		[EditorHintRange(1, byte.MaxValue)]
		public byte AgentSize { get; set; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public Camera Camera { get; set; }
		IPath IPathProvider.Path => Path;
		private static DynamicPotentialField _dynamicPotentialField;

		public AggregratedPotentialField Path { get; private set; }
		public Vector2 CurrentPosition => new Vector2(GameObj.Transform.Pos.X, GameObj.Transform.Pos.Y);
		private PotentialFieldPathfindProxy _pathfinderProxy;
		private RigidBody _rigidBody;

		void ICmpInitializable.OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				_pathfinderProxy = new PotentialFieldPathfindProxy();
				
				if (_dynamicPotentialField == null)
				{
					_dynamicPotentialField = new DynamicPotentialField(_pathfinderProxy.Pathfinder.DefinitionNodeNetwork.GridTransformer, 100f);					
				}
				_dynamicPotentialField.AddPotentialFunction(this, new QuadraticPotentialFunction(() => CurrentPosition, 2, 0.8f));
				_rigidBody = GameObj.GetComponent<RigidBody>();
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
			}
		}

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
			_dynamicPotentialField?.RemovePotentialFunction(this);
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
			request.AddCallback(pathrequest =>
			{
				Path = new AggregratedPotentialField(pathrequest.CompletedPath.GridTransformer, pathrequest.CompletedPath, _dynamicPotentialField);
			});
		}
	}
}
