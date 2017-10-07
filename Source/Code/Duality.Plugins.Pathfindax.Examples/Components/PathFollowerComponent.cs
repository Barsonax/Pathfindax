using System.Linq;
using Duality.Components;
using Duality.Input;
using Duality.Plugins.Pathfindax.Extensions;
using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	public class PathFollowerComponent : Component, ICmpUpdatable, ICmpInitializable
	{
		public int TimeBetweenMovements { get; set; }
		public byte AgentSize { get; set; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		private Transform _transform;
		private Vector2[] _path;
		private int _pathIndex;
		private GridPathfinderProxy _gridPathfinderProxy;
		public Camera Camera { get; set; }

		private int _counter;
		public void OnUpdate()
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

		public void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				_transform = GameObj.GetComponent<Transform>();
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
				_gridPathfinderProxy = new GridPathfinderProxy();
			}
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var targetPos = Camera.GetSpaceCoord(e.Position);    
			var request = _gridPathfinderProxy.RequestPath(_transform.Pos, targetPos, AgentSize, CollisionCategory);
            request.AddCallback(OnRequestCompleted);
		}

		private void OnRequestCompleted(PathRequest pathRequest)
		{
			if (pathRequest.CompletedPath != null)
				_path = pathRequest.CompletedPath.Path.Select(p => p.ToVector2()).ToArray();
		}

		public void OnShutdown(ShutdownContext context)
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
		}
	}
}
