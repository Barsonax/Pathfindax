using Duality.Editor;
using Pathfindax.Algorithms;
using Pathfindax.Factories;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Provides a way for other components to request a path from A to B. Uses the A* algorithm.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	[RequiredComponent(typeof(ISourceNodeNetworkProvider<ISourceNodeGrid<ISourceGridNode>>))]
	public class AStarGridPathfinderComponent : PathfinderComponentBase<ISourceNodeGrid<ISourceGridNode>>
	{
		/// <inheritdoc />
		public override void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				var sourceProvider = GameObj.GetComponent<ISourceNodeNetworkProvider<ISourceNodeGrid<ISourceGridNode>>>();
				if (sourceProvider != null)
				{
					Pathfinder = PathfinderFactory.CreatePathfinder(sourceProvider.GenerateGrid2D(), sourceNodeGrid =>
					{
						var nodeGrid = new AstarNodeGrid(sourceNodeGrid);
						var algorithm = new AStarGridAlgorithm();
						return PathfinderFactory.CreateRequestProcesser(nodeGrid, algorithm);
					});
					Pathfinder.Start();
				}
			}
		}
	}
}
