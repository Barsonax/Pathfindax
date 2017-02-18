using System.Collections.Generic;
using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Grid;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.PathfindEngine.PathPostProcesses;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Provides a way for other components to request a path from A to B. Uses the A* algorithm.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	public class AStarPathfinderComponent : PathfinderComponentBase, ICmpRenderer, ICmpUpdatable
	{
		public INodeGrid<IGridNode> SourceNodeGrid { get; set; }

		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; }
		public bool ShowNodeGrid { get; set; }

		[EditorHintFlags(MemberFlags.Visible)]
		private NodeGridVisualizer NodeGridVisualizer { get; set; }

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		void ICmpRenderer.Draw(IDrawDevice device)
		{
			if (ShowNodeGrid && NodeGridVisualizer != null)
				NodeGridVisualizer.Draw(device);
		}

		private int _counter;
		public void OnUpdate()
		{
			_counter++;
			if (_counter == 3)
			{
				if (DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
				{
					var sourceProvider = GameObj.GetComponent<ISourceNodeNetworkProvider<INodeGrid<IGridNode>>>();
					if (sourceProvider != null)
					{
						SourceNodeGrid = sourceProvider.GenerateGrid2D();
						var nodeGrid = new AStarGrid(SourceNodeGrid);
						var algorithm = new AStarGridAlgorithm();
						NodeGridVisualizer = new NodeGridVisualizer(SourceNodeGrid);
						var clearanceProcess = new ClearanceCompensationProcess(nodeGrid);
						MultithreadedPathfinder = new MultithreadedPathfinder<INodeGrid<AstarGridNode>>(new List<INodeGrid<AstarGridNode>> { nodeGrid }, algorithm,
							new List<IPathPreProcess> { clearanceProcess }, 
							new List<IPathPostProcess> { clearanceProcess });
						MultithreadedPathfinder.Start();
					}
				}
			}
		}

		public override void OnInit(InitContext context) { }
	}
}
