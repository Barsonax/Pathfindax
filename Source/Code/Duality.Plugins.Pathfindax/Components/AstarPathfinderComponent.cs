using Duality.Editor;
using Pathfindax.Algorithms;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.PathfindEngine.Exceptions;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Provides a way for other components to request a path from A to B. Uses the A* algorithm.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	[RequiredComponent(typeof(IDefinitionNodeNetworkProvider<IDefinitionNodeNetwork>))]
	public class AstarPathfinderComponent : PathfinderComponentBase<IDefinitionNodeNetwork, IPathfindNodeNetwork<AstarNode>, WaypointPath>
	{
		/// <summary>
		/// The max calculated clearance. Any clearance value higher than will be set to this. 
		/// Try to keep this as low as possible to prevent wasting time calculating clearance values that will never be used.
		/// </summary>
		public int MaxClearance { get; set; } = 5;
		public IDistanceHeuristic Heuristic { get; set; }

		public override IPathfinder<IDefinitionNodeNetwork, IPathfindNodeNetwork<AstarNode>, WaypointPath> CreatePathfinder()
		{
			var definitionNodeNetwork = GetDefinitionNodeNetwork();
			if (definitionNodeNetwork == null) throw new NoDefinitionNodeNetworkException();
			if (Heuristic == null) throw new NoHeuristicException();
			return PathfindaxDualityCorePlugin.PathfindaxManager.CreateAstarPathfinder(definitionNodeNetwork, Heuristic, MaxClearance, AmountOfThreads);
		}
	}
}