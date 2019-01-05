using Duality.Editor;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Components
{
	[EditorHintCategory(PathfindaxStrings.Pathfindax)]
	[RequiredComponent(typeof(PotentialFieldPathfinderComponent))]
	public class DynamicPotentialFieldComponent : Component, ICmpInitializable
	{
		public float UpdateInterval { get; set; } = 100f;

		[DontSerialize]
		private DynamicPotentialField _potentialField;

		public DynamicPotentialField PotentialField
		{
			get
			{
				if (_potentialField == null && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
				{
					var pathfinder = GameObj.GetComponent<PotentialFieldPathfinderComponent>();
					var definitionNodeNetwork = ((Pathfinder<DefinitionNodeGrid, DijkstraNodeGrid, PotentialField>)pathfinder.Pathfinder).DefinitionNodeNetwork;
					_potentialField = new DynamicPotentialField(PathfindaxDualityCorePlugin.PathfindaxManager, definitionNodeNetwork.Transformer, UpdateInterval);
				}
				return _potentialField;
			}
		}

		void ICmpInitializable.OnActivate(){}

		void ICmpInitializable.OnDeactivate()
		{
			_potentialField?.Dispose();
			_potentialField = null;
		}
	}
}
