using Duality.Components.Physics;
using Duality.Editor;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	/// <summary>
	/// jhvjbvjkhbvjkhbkhbkbkjb
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	[RequiredComponent(typeof(RigidBody))]
	public class TurnToMoveDirection : Component, ICmpUpdatable, ICmpInitializable
	{
		public float TurnSpeed { get; set; }
		private RigidBody _rigidBody;

		void ICmpInitializable.OnActivate()
		{
			_rigidBody = GameObj.GetComponent<RigidBody>();
		}

		void ICmpInitializable.OnDeactivate() { }

		public void OnUpdate()
		{
			if (_rigidBody != null)
				GameObj.Transform.Angle = MathF.Lerp(GameObj.Transform.Angle, _rigidBody.LinearVelocity.Angle, TurnSpeed);
		}
	}
}
