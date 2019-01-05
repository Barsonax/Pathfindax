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
	public class GridMouseClickPathfinder : Component, ICmpInitializable, IPathProvider
	{
		/// <summary>
		/// The size of the agent in nodes. Bigger agents won't fit in nodes whose clearance is smaller than this.
		/// </summary>
		[EditorHintRange(1, byte.MaxValue)]
		public byte AgentSize { get; set; }

		/// <summary>
		/// What collision categories will the agent collide with? These categories will be avoided when calculating a path.
		/// </summary>
		public PathfindaxCollisionCategory CollisionCategory { get; set; }

		/// <summary>
		/// The currently calculated path
		/// </summary>
		public IPath Path { get; private set; }

		public AstarPathfinderComponent PathfinderComponent { get; set; }

		/// <summary>
		/// A reference to the <see cref="Duality.Components.Camera"/> thats used to convert the screen coordinates from mouseclicks to world coordinates.
		/// </summary>
		public Camera Camera { get; set; }

		[DontSerialize]
		private Vector3? _pathStart;

		void ICmpInitializable.OnActivate()
		{
			DualityApp.Mouse.Move += Mouse_Move;
			DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
		}

		void ICmpInitializable.OnDeactivate()
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
			DualityApp.Mouse.Move -= Mouse_Move;
		}

		private void PathSolved(PathRequest<WaypointPath> pathRequest)
		{
			Path = pathRequest.CompletedPath;
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			if (_pathStart == null)
			{
				_pathStart = Camera.GetWorldPos(e.Pos);
			}
			else
			{
				_pathStart = null;
			}
		}

		private void Mouse_Move(object sender, MouseMoveEventArgs e)
		{
			if (_pathStart != null)
			{
				var request = PathfinderComponent.Pathfinder.RequestPath(_pathStart.Value, _pathStart.Value, CollisionCategory, AgentSize);
				request.AddCallback(PathSolved);
			}
		}
	}
}
