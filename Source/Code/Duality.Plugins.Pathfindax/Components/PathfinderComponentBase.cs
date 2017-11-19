using Pathfindax.Grid;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Base class for duality pathfinders
	/// </summary>
	public abstract class PathfinderComponentBase<TDefinitionNodeNetwork, TPath> : Component, ICmpInitializable, IDualityPathfinderComponent
		where TDefinitionNodeNetwork : class, IDefinitionNodeNetwork
		where TPath : IPath
	{
		IPathfinder IDualityPathfinderComponent.Pathfinder => Pathfinder;

		public IPathfinder<TPath> Pathfinder { get; protected set; }

		public string PathfinderId { get; set; }

		public int AmountOfThreads { get; set; } = 1;

		protected TDefinitionNodeNetwork GetSourceNodeNetwork()
		{
			var sourceProvider = GameObj.GetComponent<IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>>();
			if (sourceProvider == null)
			{
				Log.Game.WriteError($"{GetType()}: Could not find a component that implements {typeof(IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>)}.");
				return null;
			}
			var sourceNodeNetwork = sourceProvider.GenerateGrid2D();
			if (sourceNodeNetwork == null)
			{
				Log.Game.WriteError($"{GetType()}: Found a component that implements {typeof(IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>)} but it could not generate a nodenetwork.");
				return null;
			}
			return sourceNodeNetwork;
		}

		public abstract void OnInit(InitContext context);

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			Pathfinder?.Stop();
		}
	}
}
