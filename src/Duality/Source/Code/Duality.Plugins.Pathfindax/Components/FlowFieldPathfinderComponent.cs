using System;
using Duality.Editor;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.PathfindEngine.Exceptions;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Provides a way for other components to request a path to B. Uses flowfields.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	[RequiredComponent(typeof(IDefinitionNodeNetworkProvider<DefinitionNodeGrid>))]
	public class FlowFieldPathfinderComponent : PathfinderComponentBase<DefinitionNodeGrid, DijkstraNodeGrid, FlowField>
	{
		/// <summary>
		/// The max calculated clearance. Any clearance value higher than will be set to this. 
		/// Try to keep this as low as possible to prevent wasting time calculating clearance values that will never be used.
		/// </summary>
		public int MaxClearance { get; set; } = 5;

		/// <summary>
		/// The maximum amount of cached <see cref="FlowField"/>s
		/// </summary>
		public int MaxCachedFlowFields { get; set; } = 100;

		public override IPathfinder<DefinitionNodeGrid, DijkstraNodeGrid, FlowField> CreatePathfinder()
		{
			try
			{
				var definitionNodeNetwork = GetDefinitionNodeNetwork();
				if (definitionNodeNetwork == null) throw new NoDefinitionNodeNetworkException();
				return PathfinderFactory.CreateFlowFieldPathfinder(PathfindaxDualityCorePlugin.PathfindaxManager, definitionNodeNetwork, MaxClearance, MaxCachedFlowFields, AmountOfThreads);
			}
			catch (Exception e)
			{
				Logs.Game.WriteError($"Could not generate the definitionnode network. Returning a dummy pathfinder that does nothing. The following error occurred: {LogFormat.Exception(e)}.");
				return new DummyPathfinder<DefinitionNodeGrid, DijkstraNodeGrid, FlowField>();
			}
		}
	}
}