using System.Collections.Generic;
using Duality;
using Duality.Drawing;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

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

		private NodeVisualizer _nodeVisualizer;

		public override void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				if (MultithreadedPathfinder == null)
				{
					var sourceNodeGridFactory = new SourceNodeGridFactory();
					SourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(16, 16, 1, GenerateNodeGridNeighbours.All);
					SourceNodeGrid.NodeArray[5, 4].Walkable = false;
					SourceNodeGrid.NodeArray[5, 5].Walkable = false;
					SourceNodeGrid.NodeArray[5, 6].Walkable = false;
					SourceNodeGrid.NodeArray[5, 7].Walkable = false;
					SourceNodeGrid.NodeArray[5, 8].Walkable = false;

					SourceNodeGrid.NodeArray[5, 10].Walkable = false;
					SourceNodeGrid.NodeArray[6, 10].Walkable = false;
					SourceNodeGrid.NodeArray[7, 10].Walkable = false;
					SourceNodeGrid.NodeArray[8, 10].Walkable = false;
					SourceNodeGrid.NodeArray[9, 10].Walkable = false;

					var nodeGrid = new AStarGrid(SourceNodeGrid);
					var algorithm = new AStarAlgorithm();
					_nodeVisualizer = new NodeVisualizer(SourceNodeGrid, 0.5f);
					MultithreadedPathfinder = new MultithreadedPathfinder<INodeGrid<IAStarGridNode>, IAStarGridNode>(new List<INodeGrid<IAStarGridNode>> { nodeGrid }, algorithm);
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
			_nodeVisualizer.Draw(device);
		}
	}
}
