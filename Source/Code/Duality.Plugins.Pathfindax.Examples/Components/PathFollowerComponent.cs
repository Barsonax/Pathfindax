using Duality.Components;
using Duality.Editor;
using Duality.Input;
using Duality.Plugins.Pathfindax.Components;
using Pathfindax.Nodes;
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


		IPath IPathProvider.Path => _path;

		[DontSerialize]
		private IWaypointPath _path;

		public AstarPathfinderComponent PathfinderComponent { get; set; }

		void ICmpInitializable.OnActivate()
		{
			DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
		}

		void ICmpInitializable.OnDeactivate()
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
		}

		void ICmpUpdatable.OnUpdate()
		{
			if (_path != null)
			{
				var heading = _path.GetHeading(GameObj.Transform.Pos);
				if (heading.Length <= MovementSpeed)
					_path.NextWaypoint();
				GameObj.Transform.MoveBy(PathfindaxMathF.Clamp(heading.Normalized * Time.TimeMult * MovementSpeed, heading.Length));
			}
		}

		private async void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var targetPos = Camera.GetWorldPos(e.Pos);
			var request = PathfinderComponent.Pathfinder.RequestPath(GameObj.Transform.Pos, targetPos, CollisionCategory, AgentSize);
			_path = await request;
		}
	}
}
