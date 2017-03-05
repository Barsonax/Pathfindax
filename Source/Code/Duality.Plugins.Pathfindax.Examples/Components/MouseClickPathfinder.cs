using System.Linq;
using Duality.Components;
using Duality.Drawing;
using Duality.Editor;
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
	public class MouseClickPathfinder : Component, ICmpRenderer, ICmpInitializable
	{
		private PathfinderProxy<ISourceNodeGrid<ISourceGridNode>> _gridPathfinderProxy;
		private PathfinderProxy<ISourceNodeNetwork<ISourceNode>> _nonGridPathfinderProxy;
		public byte AgentSize { get; set; }
		public PathfindaxCollisionCategory CollisionCategory { get; set; }
		public Vector2[] Path { get; private set; }
		public bool OnGrid { get; set; }

		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; }

		public Camera Camera { get; set; }

		private void PathSolved(CompletedPath completedPath)
		{
			Path = completedPath.Path.Select(x => x.WorldPosition.ToVector2()).ToArray();
		}

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
	(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
	(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (Path != null)
			{
				var agentSizeCompensation = new Vector2(0, 0);
				if (OnGrid)
				{
					var sourceNodes = _gridPathfinderProxy.PathfinderComponent.SourceNodeNetwork;
					if (sourceNodes != null)
					{
						var offset = GridClearanceHelper.GridNodeOffset(AgentSize, sourceNodes.NodeSize.X);
						agentSizeCompensation = new Vector2(offset, offset);
					}
				}
				var canvas = new Canvas(device);
				canvas.State.ZOffset = -10;

				for (var index = 0; index < Path.Length; index++)
				{
					if (index == 0) canvas.State.ColorTint = ColorRgba.Green;
					else if (index == Path.Length - 1) canvas.State.ColorTint = ColorRgba.Blue;
					else canvas.State.ColorTint = ColorRgba.Red;
					var position = Path[index];
					canvas.FillCircle(position.X + agentSizeCompensation.X, position.Y + agentSizeCompensation.Y, 10f);
				}

				canvas.State.ColorTint = ColorRgba.Red;
				for (var i = 1; i < Path.Length; i++)
				{
					var from = Path[i - 1];
					var to = Path[i];
					canvas.DrawLine(from.X + agentSizeCompensation.X, from.Y + agentSizeCompensation.Y, 0, to.X + agentSizeCompensation.X, to.Y + agentSizeCompensation.Y, 0);
				}
			}
		}

		public void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				DualityApp.Mouse.Move += Mouse_Move;
				DualityApp.Mouse.ButtonDown += Mouse_ButtonDown;
				if (OnGrid)
				{
					_gridPathfinderProxy = new PathfinderProxy<ISourceNodeGrid<ISourceGridNode>>();
				}
				else
				{
					_nonGridPathfinderProxy = new PathfinderProxy<ISourceNodeNetwork<ISourceNode>>();
				}
			}
		}

		private PositionF? _pathStart;
		private void Mouse_ButtonDown(object sender, MouseButtonEventArgs e)
		{
			if (_pathStart == null)
			{
				var mouseWorldPosition = Camera.GetSpaceCoord(e.Position);
				_pathStart = new PositionF(mouseWorldPosition.X, mouseWorldPosition.Y);
			}
			else
			{
				Path = null;
				_pathStart = null;
			}
		}

		private void Mouse_Move(object sender, MouseMoveEventArgs e)
		{
			if (_pathStart != null)
			{
				var mouseWorldPosition = Camera.GetSpaceCoord(e.Position);
				var pathEnd = new PositionF(mouseWorldPosition.X, mouseWorldPosition.Y);				
				if (OnGrid) //Implementation for nodegrid pathfinding
				{
					var offset = -GridClearanceHelper.GridNodeOffset(AgentSize, _gridPathfinderProxy.PathfinderComponent.SourceNodeNetwork.NodeSize.X);
					var start = new PositionF(_pathStart.Value.X + offset, _pathStart.Value.Y + offset);
					var end = new PositionF(pathEnd.X + offset, pathEnd.Y + offset);
					var startNode = _gridPathfinderProxy.PathfinderComponent.SourceNodeNetwork.GetNode(start);
					var endNode = _gridPathfinderProxy.PathfinderComponent.SourceNodeNetwork.GetNode(end);
					var request = new PathRequest(PathSolved, startNode, endNode, AgentSize, CollisionCategory);
					_gridPathfinderProxy.RequestPath(request);
				}
				else //Implementation for non grid pathfinding
				{
					var startNode = _nonGridPathfinderProxy.PathfinderComponent.SourceNodeNetwork.GetNode(_pathStart.Value);
					var endNode = _nonGridPathfinderProxy.PathfinderComponent.SourceNodeNetwork.GetNode(pathEnd);
					var request = new PathRequest(PathSolved, startNode, endNode, AgentSize, CollisionCategory);
					_nonGridPathfinderProxy.RequestPath(request);
				}
			}
		}

		public void OnShutdown(ShutdownContext context)
		{
			DualityApp.Mouse.ButtonDown -= Mouse_ButtonDown;
			DualityApp.Mouse.Move -= Mouse_Move;
		}
	}
}
