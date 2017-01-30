using System.Collections.Generic;
using Duality;
using Duality.Drawing;
using Pathfindax.Algorithms;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;

namespace Pathfindax.Duality.Components
{
	/// <summary>
	/// Provides a way for other components to request a path from a to b
	/// WIP
	/// </summary>
	public class PathfinderComponent : PathfinderComponentBase, ICmpRenderer
	{
		public SourceNodeGrid SourceNodeGrid { get; set; }
		public float BoundRadius { get; }

		public override void OnInit(InitContext context)
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
							array[x, y] = new Node(new PositionF(x, y));
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

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
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
			}
		}
	}
}
