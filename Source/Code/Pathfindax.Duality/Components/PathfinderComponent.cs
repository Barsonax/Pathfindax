using System.Collections.Generic;
using System.Linq;
using Duality;
using Duality.Drawing;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;

namespace Pathfindax.Duality.Components
{
	/// <summary>
	/// Provides a way for other components to request a path from a to b
	/// WIP
	/// </summary>
	public class PathfinderComponent : PathfinderComponentBase, ICmpRenderer, ICmpUpdatable
	{
		public INodeGrid<IGridNode> SourceNodeGrid { get; set; }
		public float BoundRadius { get; }

		private NodeGridVisualizer _nodeGridVisualizer;

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (_nodeGridVisualizer != null)
				_nodeGridVisualizer.Draw(device);
		}

		private int _counter;
		public void OnUpdate()
		{
			_counter++;
			if (_counter == 2)
			{
				if (DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
				{
					var sourceProvider = GameObj.GetComponent<ISourceNodeNetworkProvider<INodeGrid<IGridNode>>>();
					if (sourceProvider != null)
					{
						var sourceGrids = sourceProvider.GenerateGrid2D();
						SourceNodeGrid = sourceGrids.FirstOrDefault();
						var nodeGrid = new AStarGrid(SourceNodeGrid);
						var algorithm = new AStarAlgorithm();
						_nodeGridVisualizer = new NodeGridVisualizer(SourceNodeGrid);
						MultithreadedPathfinder = new MultithreadedPathfinder<INodeGrid<IAStarGridNode>>(new List<INodeGrid<IAStarGridNode>> { nodeGrid }, algorithm);
						MultithreadedPathfinder.Start();
					}
					if (MultithreadedPathfinder == null)
					{
						var sourceNodeGridFactory = new SourceNodeGridFactory();
						SourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(16, 16, new PositionF(32, 32), GenerateNodeGridNeighbours.All);
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
						_nodeGridVisualizer = new NodeGridVisualizer(SourceNodeGrid);
						MultithreadedPathfinder = new MultithreadedPathfinder<INodeGrid<IAStarGridNode>>(new List<INodeGrid<IAStarGridNode>> { nodeGrid }, algorithm);
						MultithreadedPathfinder.Start();
					}
				}
			}
		}

		public override void OnInit(InitContext context)
		{
			
		}
	}
}
