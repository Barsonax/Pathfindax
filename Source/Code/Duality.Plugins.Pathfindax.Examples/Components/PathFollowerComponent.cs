using System.Linq;
using Duality.Components;
using Duality.Input;
using Duality.Plugins.Pathfindax.Extensions;
using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;
using Pathfindax.Utils;

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
		private PathfinderProxy<ISourceNodeGrid<ISourceGridNode>> _gridPathfinderProxy;
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
					var astarGrid = _gridPathfinderProxy.Pathfinder.SourceNodeNetwork;
					if (astarGrid != null)
					{
						var offset = GridClearanceHelper.GridNodeOffset(AgentSize, astarGrid.NodeSize.X);
						target = target + new Vector2(offset, offset);
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
				_gridPathfinderProxy = new PathfinderProxy<ISourceNodeGrid<ISourceGridNode>>();
			}
		}

		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			var targetPos = Camera.GetSpaceCoord(e.Position);
			var start = new PositionF(_transform.Pos.X, _transform.Pos.Y);
			var end = new PositionF(targetPos.X, targetPos.Y);
			var astarGrid = _gridPathfinderProxy.Pathfinder.SourceNodeNetwork;
			if (astarGrid != null)
			{
				var offset = -GridClearanceHelper.GridNodeOffset(AgentSize, astarGrid.NodeSize.X);
				start = new PositionF(start.X + offset, start.Y + offset);
				end = new PositionF(end.X + offset, end.Y + offset);
			}
			var startNode = _gridPathfinderProxy.Pathfinder.SourceNodeNetwork.GetNode(start);
			var endNode = _gridPathfinderProxy.Pathfinder.SourceNodeNetwork.GetNode(end);
			var request = new PathRequest(_gridPathfinderProxy.Pathfinder, startNode, endNode, AgentSize, CollisionCategory);
            request.AddCallback(OnRequestCompleted);
		}

		private void OnRequestCompleted(PathRequest pathRequest)
		{
			if (pathRequest.Path != null)
				_path = pathRequest.Path.Select(x => x.WorldPosition.ToVector2()).ToArray();
		}

		public void OnShutdown(ShutdownContext context)
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
		}
	}
}
