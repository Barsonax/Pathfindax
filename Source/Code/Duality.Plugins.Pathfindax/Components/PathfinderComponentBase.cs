using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Base class for duality pathfinders
	/// </summary>
	public abstract class PathfinderComponentBase<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> : Component, ICmpInitializable, IDualityPathfinderComponent
		where TDefinitionNodeNetwork : class, IDefinitionNodeNetwork
		where TThreadNodeNetwork : IPathfindNodeNetwork
		where TPath : IPath
	{
		IPathfinder IDualityPathfinderComponent.Pathfinder => Pathfinder;

		private IPathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> _pathfinder;

		public IPathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> Pathfinder => _pathfinder ?? (_pathfinder = CreatePathfinder());

		public int AmountOfThreads { get; set; } = 1;

		public abstract IPathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> CreatePathfinder();

		protected TDefinitionNodeNetwork GetDefinitionNodeNetwork()
		{
			var definitionNodeNetworkProvider = GameObj.GetComponent<IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>>();
			if (definitionNodeNetworkProvider == null)
			{
				Log.Game.WriteError($"{GetType()}: Could not find a component that implements {typeof(IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>)}.");
				return null;
			}
			var definitionNodeNetwork = definitionNodeNetworkProvider.GenerateGrid2D();
			if (definitionNodeNetwork == null)
			{
				Log.Game.WriteError($"{GetType()}: Found a component that implements {typeof(IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>)} but it could not generate a nodenetwork.");
				return null;
			}
			return definitionNodeNetwork;
		}

		void ICmpInitializable.OnInit(InitContext context) { }

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			Pathfinder?.Stop();
		}
	}
}
