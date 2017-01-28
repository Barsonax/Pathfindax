using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Duality;
using Duality.Drawing;
using Pathfindax.Algorithms;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Pathfindax
{
	public class PathfindComponent : Component, ICmpInitializable, ICmpRenderer, ICmpUpdatable
	{
		public IMultithreadedPathfinder MultithreadedPathfinder { get; set; }
		public SourceNodeGrid SourceNodeGrid { get; set; }
		public Vector2[] Path { get; private set; }
		public float BoundRadius { get; }

		public void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				if (MultithreadedPathfinder == null)
				{
					var width = 16;
					var height = 16;
					var array = new Array2D<INode>(width, height);
					for (int y = 0; y < height; y++)
					{
						for (int x = 0; x < width; x++)
						{
							array[x, y] = new Node(new Vector2(x, y));
						}
					}
					array[5, 4].Walkable = false;
					array[5, 5].Walkable = false;
					array[5, 6].Walkable = false;
					array[5, 7].Walkable = false;
					array[5, 8].Walkable = false;

					array[5, 10].Walkable = false;
					array[6, 10].Walkable = false;
					array[7, 10].Walkable = false;
					array[8, 10].Walkable = false;
					array[9, 10].Walkable = false;



					SourceNodeGrid = new SourceNodeGrid(array, 1);
					var nodeGrid = new AStarGrid(SourceNodeGrid);
					var algorithm = new AStarAlgorithm();

					MultithreadedPathfinder = new MultithreadedPathfinder<IAStarNode>(new List<INodeGrid<IAStarNode>> { nodeGrid }, algorithm);
					MultithreadedPathfinder.Start();
				}
			}
		}

		public void OnShutdown(ShutdownContext context)
		{
			if (MultithreadedPathfinder != null)
			{
				MultithreadedPathfinder.Stop();
			}
		}

		public bool IsVisible(IDrawDevice device)
		{
			// Only render when in screen overlay mode and the visibility mask is non-empty
			return
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		public void Draw(IDrawDevice device)
		{
			if (SourceNodeGrid != null)
			{
				var canvas = new Canvas(device);
				for (int y = 0; y < SourceNodeGrid.Height; y++)
				{
					for (int x = 0; x < SourceNodeGrid.Width; x++)
					{
						var node = SourceNodeGrid.NodeArray[x, y];
						if (node.Walkable)
						{
							canvas.DrawCircle(node.WorldPosition.X, node.WorldPosition.Y, 0.5f);
						}
						else
						{
							canvas.FillCircle(node.WorldPosition.X, node.WorldPosition.Y, 0.5f);
						}
					}
				}

				if (Path != null)
				{
					canvas.State.ColorTint = ColorRgba.Red;
					foreach (var vector2 in Path)
					{
						canvas.FillCircle(vector2.X, vector2.Y, 0.4f);
					}
				}
			}
		}

		private readonly Random _randomGenerator = new Random();
		public void OnUpdate()
		{
			var start = new Vector2(_randomGenerator.Next(0, (int)SourceNodeGrid.GridWorldSize.X), _randomGenerator.Next(0, (int)SourceNodeGrid.GridWorldSize.Y));
			var end = new Vector2(_randomGenerator.Next(0, (int)SourceNodeGrid.GridWorldSize.X), _randomGenerator.Next(0, (int)SourceNodeGrid.GridWorldSize.Y));
			var request = new PathRequest(PathSolved, start, end, 1);
			MultithreadedPathfinder.RequestPath(request);
		}

		public void PathSolved(CompletedPath completedPath)
		{
			Path = completedPath.Path;
		}
	}
}
