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
		public float UpdateInterval { get; set; } = 100f;
		private DynamicPotentialField _potentialField;

		public DynamicPotentialField PotentialField
		{
			get
			{
				if (_potentialField == null)
				{
					var pathfinder = GameObj.GetComponent<PotentialFieldPathfinderComponent>();
					var definitionNodeNetwork = ((Pathfinder<DefinitionNodeGrid, DijkstraNodeGrid, PotentialField>)pathfinder.Pathfinder).DefinitionNodeNetwork;
					_potentialField = new DynamicPotentialField(PathfindaxDualityCorePlugin.PathfindaxManager, definitionNodeNetwork.Transformer, UpdateInterval);
				}
				return _potentialField;
			}
		}

		void ICmpInitializable.OnInit(InitContext context) { }

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			_potentialField?.Dispose();
			_potentialField = null;
		}
	}
}
