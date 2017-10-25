using Duality.Components;
using Duality.Editor;
using Duality.Input;
using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class PathFollowerComponent : Component, ICmpUpdatable, ICmpInitializable
	{
		[EditorHintRange(1, int.MaxValue)]
		public int TimeBetweenMovements { get; set; }

		[EditorHintRange(1, byte.MaxValue)]
		public byte AgentSize { get; set; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public Camera Camera { get; set; }

		private Transform _transform;
		private Vector2[] _path;
		private int _pathIndex;
		private GridPathfinderProxy _gridPathfinderProxy;
		private int _counter;

		void ICmpInitializable.OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				_transform = GameObj.GetComponent<Transform>();
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
				_gridPathfinderProxy = new GridPathfinderProxy();
			}
		}

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
		}

		void ICmpUpdatable.OnUpdate()
		{
			_counter++;
			if (_counter > TimeBetweenMovements)
			{
				_counter = 0;
				if (_path != null)
				{
					Vector2 target;
					if (_pathIndex < _path.Length)
					{
						target = _path[_pathIndex];
					}
					else
					{
						_pathIndex = 0;
						_path = null;
						return;
					}
					_transform.MoveToAbs(target);
					if (MathF.Distance(_transform.Pos.X, _transform.Pos.Y, target.X, target.Y) < 0.1f)
					{
						_pathIndex++;
					}
				}
			}
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var targetPos = Camera.GetSpaceCoord(e.Position);    
			var request = _gridPathfinderProxy.RequestPath(_transform.Pos, targetPos, CollisionCategory, AgentSize);
            request.AddCallback(OnRequestCompleted);
		}

		private void OnRequestCompleted(PathRequest pathRequest)
		{
			if (pathRequest.CompletedPath != null)
				_path = pathRequest.CompletedPath.Path;
		}
	}
}
