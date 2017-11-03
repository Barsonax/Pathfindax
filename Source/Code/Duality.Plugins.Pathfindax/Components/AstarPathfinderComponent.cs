using System.Collections.Generic;
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
	[RequiredComponent(typeof(IDefinitionNodeNetworkProvider<IDefinitionNodeNetwork>))]
	public class AstarPathfinderComponent : PathfinderComponentBase<IDefinitionNodeNetwork>
	{
		private readonly List<AstarNodeNetwork> _astarNodeNetworks = new List<AstarNodeNetwork>();
		public IReadOnlyList<AstarNodeNetwork> AstarNodeNetworks => _astarNodeNetworks;

		/// <summary>
		/// The max calculated clearance. Any clearance value higher than will be set to this. 
		/// Try to keep this as low as possible to prevent wasting time calculating clearance values that will never be used.
		/// </summary>
		public int MaxClearance { get; set; } = 5;

		/// <inheritdoc />
		public override void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				var sourceNodeNetwork = GetSourceNodeNetwork();
				if (sourceNodeNetwork == null) return;
				Pathfinder = PathfinderFactory.CreatePathfinder(sourceNodeNetwork, s =>
				{
					var nodeGenerators = new List<IPathfindNodeGenerator<AstarNode>>();
					if (s is IDefinitionNodeGrid sourceNodeGrid)
						nodeGenerators.Add(new GridClearanceGenerator(sourceNodeGrid, MaxClearance));
					var astarNodeNetwork = new AstarNodeNetwork(s, nodeGenerators.ToArray());
					_astarNodeNetworks.Add(astarNodeNetwork);
					var algorithm = new AStarAlgorithm();
					return PathfinderFactory.CreateRequestProcesser(astarNodeNetwork, algorithm);
				});
				Pathfinder.Start();
			}
		}
	}
}