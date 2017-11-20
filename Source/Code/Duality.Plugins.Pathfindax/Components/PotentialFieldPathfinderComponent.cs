using Duality.Editor;
using Pathfindax.Factories;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;
using Pathfindax.PathfindEngine.Exceptions;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Provides a way for other components to request a path to B. Uses potential fields.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	[RequiredComponent(typeof(IDefinitionNodeNetworkProvider<DefinitionNodeGrid>))]
	public class PotentialFieldPathfinderComponent : PathfinderComponentBase<DefinitionNodeGrid, DijkstraNodeGrid, PotentialField>
	{
		/// <summary>
		/// The max calculated clearance. Any clearance value higher than will be set to this. 
		/// Try to keep this as low as possible to prevent wasting time calculating clearance values that will never be used.
		/// </summary>
		public int MaxClearance { get; set; } = 5;

		/// <summary>
		/// The maximum amount of cached <see cref="PotentialField"/>s
		/// </summary>
		public int MaxCachedFlowFields { get; set; } = 100;

		public override IPathfinder<DefinitionNodeGrid, DijkstraNodeGrid, PotentialField> CreatePathfinder()
		{
			var definitionNodeNetwork = GetDefinitionNodeNetwork();
			if (definitionNodeNetwork == null) throw new NoDefinitionNodeNetworkException();
			return PathfinderFactory.CreatePotentialFieldPathfinder(PathfindaxDualityCorePlugin.PathfindaxManager, definitionNodeNetwork, MaxClearance, MaxCachedFlowFields, AmountOfThreads);
		}
	}
}
