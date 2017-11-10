using System.Collections.Generic;
using Duality.Editor;
using Pathfindax.Algorithms;
using Pathfindax.Factories;
using Pathfindax.Grid;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Provides a way for other components to request a path from A to B. Uses the A* algorithm.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	[RequiredComponent(typeof(IDefinitionNodeNetworkProvider<DefinitionNodeGrid>))]
	public class FlowFieldPathfinderComponent : PathfinderComponentBase<DefinitionNodeGrid>
	{
		private readonly List<DijkstraNodeGrid> _dijkstraNodeGrids = new List<DijkstraNodeGrid>();
		public IReadOnlyList<DijkstraNodeGrid> DijkstraNodeGrids => _dijkstraNodeGrids;

		/// <summary>
		/// The max calculated clearance. Any clearance value higher than will be set to this. 
		/// Try to keep this as low as possible to prevent wasting time calculating clearance values that will never be used.
		/// </summary>
		public int MaxClearance { get; set; } = 5;
		public int MaxCachedFlowFields { get; set; } = 100;

		/// <inheritdoc />
		public override void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				var sourceNodeNetwork = GetSourceNodeNetwork();
				if (sourceNodeNetwork == null) return;
				Pathfinder = PathfinderFactory.CreatePathfinder(sourceNodeNetwork, new FlowFieldAlgorithm(100), (definitionNodeGrid, algorithm) =>
				 {
					 var dijkstraNodeGrid = new DijkstraNodeGrid(definitionNodeGrid, MaxClearance);
					 _dijkstraNodeGrids.Add(dijkstraNodeGrid);
					 return PathfinderFactory.CreateRequestProcesser(dijkstraNodeGrid, algorithm);
				 });
				Pathfinder.Start();
			}
		}
	}
}