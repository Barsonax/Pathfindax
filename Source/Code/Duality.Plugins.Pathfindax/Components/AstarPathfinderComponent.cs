using System;
using Duality.Editor;
using Pathfindax.Algorithms;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
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
		public IDistanceHeuristic Heuristic { get; set; } = new ManhattanDistance();

		public override IPathfinder<IDefinitionNodeNetwork, IPathfindNodeNetwork<AstarNode>, WaypointPath> CreatePathfinder()
		{
			try
			{
				if (Heuristic == null)
				{
					throw new NullReferenceException("The heuristic for the pathfinder cannot be null.");
				}
				var definitionNodeNetwork = GetDefinitionNodeNetwork();
				return PathfindaxDualityCorePlugin.PathfindaxManager.CreateAstarPathfinder(definitionNodeNetwork, Heuristic, MaxClearance, AmountOfThreads);
			}
			catch (Exception e)
			{
				Log.Game.WriteError($"Could not generate the definitionnode network. Returning a dummy pathfinder that does nothing. The following error occurred: {Log.Exception(e)}.");
				return new DummyPathfinder<IDefinitionNodeNetwork, IPathfindNodeNetwork<AstarNode>, NodePath>();
			}		
		}
	}
}