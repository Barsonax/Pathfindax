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
	[RequiredComponent(typeof(ISourceNodeNetworkProvider<ISourceNodeGrid<SourceGridNode>>))]
	public class AStarGridPathfinderComponent : PathfinderComponentBase<ISourceNodeGrid<SourceGridNode>>
	{
		/// <inheritdoc />
		public override void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				var sourceNodeGrid = GetSourceNodeNetwork();
				if (sourceNodeGrid == null) return;
				Pathfinder = PathfinderFactory.CreatePathfinder(sourceNodeGrid, s =>
				{
					var nodeGrid = new AstarNodeGrid(s);
					var algorithm = new AStarGridAlgorithm();
					return PathfinderFactory.CreateRequestProcesser(nodeGrid, algorithm);
				});
				Pathfinder.Start();
			}
		}
	}
}
