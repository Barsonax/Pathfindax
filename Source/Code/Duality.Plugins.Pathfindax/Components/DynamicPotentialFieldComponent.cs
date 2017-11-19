using Duality.Editor;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	[RequiredComponent(typeof(PotentialFieldPathfinderComponent))]
	public class DynamicPotentialFieldComponent : Component, ICmpInitializable
	{
		public DynamicPotentialField PotentialField { get; private set; }
		public float UpdateInterval { get; set; } = 100f;
		void ICmpInitializable.OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				var pathfinder = GameObj.GetComponent<PotentialFieldPathfinderComponent>();
				var definitionNodeNetwork = ((Pathfinder<DefinitionNodeGrid, DijkstraNodeGrid, PotentialField>) pathfinder.Pathfinder).DefinitionNodeNetwork;
				PotentialField = new DynamicPotentialField(PathfindaxDualityCorePlugin.PathfindaxManager, definitionNodeNetwork.Transformer, UpdateInterval);
			}
		}

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			PotentialField?.Dispose();
			PotentialField = null;
		}
	}
}
