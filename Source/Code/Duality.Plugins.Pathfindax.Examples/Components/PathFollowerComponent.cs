using System.Linq;
using Duality.Components;
using Duality.Input;
using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;

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

		private int counter;
		public void OnUpdate()
		{
			counter++;
			if (counter > TimeBetweenMovements)
			{
				counter = 0;
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
					var astarGrid = _gridPathfinderProxy.PathfinderComponent.SourceNodeNetwork;
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
			var astarGrid = _gridPathfinderProxy.PathfinderComponent.SourceNodeNetwork;
			if (astarGrid != null)
			{
				var offset = -GridClearanceHelper.GridNodeOffset(AgentSize, astarGrid.NodeSize.X);
				start = new PositionF(start.X + offset, start.Y + offset);
				end = new PositionF(end.X + offset, end.Y + offset);
			}
			var startNode = _gridPathfinderProxy.PathfinderComponent.SourceNodeNetwork.GetNode(start);
			var endNode = _gridPathfinderProxy.PathfinderComponent.SourceNodeNetwork.GetNode(end);
			var request = new PathRequest(OnRequestCompleted, startNode, endNode, AgentSize, CollisionCategory);
			_gridPathfinderProxy.RequestPath(request);
		}

		private void OnRequestCompleted(CompletedPath completedPath)
		{
			if (completedPath.Path != null)
				_path = completedPath.Path.Select(pos => new Vector2(pos.X, pos.Y)).ToArray();
		}

		public void OnShutdown(ShutdownContext context)
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
		}
	}
}
