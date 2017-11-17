using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Base class for duality pathfinders
	/// </summary>
	public abstract class PathfinderComponentBase<TDefinitionNodeNetwork> : Component, ICmpInitializable, IDualityPathfinderComponent
		where TDefinitionNodeNetwork : class, IDefinitionNodeNetwork
	{
		/// <summary>
		/// 
		/// </summary>
		public IPathfinder Pathfinder { get; protected set; }

		/// <summary>
		/// 
		/// </summary>
		public string PathfinderId { get; set; }

		/// <summary>
		/// 
		/// </summary>
		public int AmountOfThreads { get; set; } = 1;

		/// <summary>
		/// 
		/// </summary>
		/// <returns></returns>
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

		/// <summary>
		/// Called when initializing the pathfinder
		/// </summary>
		/// <param name="context"></param>
		public abstract void OnInit(InitContext context);

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			Pathfinder?.Stop();
		}
	}
}
