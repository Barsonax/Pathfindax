using Duality.Editor;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.PathfindEngine.Exceptions;
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

		[DontSerialize]
		private IPathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> _pathfinder;

		[EditorHintFlags(MemberFlags.Invisible)]
		public IPathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> Pathfinder
		{
			get
			{
				if (DualityApp.ExecContext != DualityApp.ExecutionContext.Game) return null;
				if (_pathfinder != null) return _pathfinder;
				return _pathfinder = CreatePathfinder();
			}
		}

		public int AmountOfThreads { get; set; } = 1;

		public abstract IPathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> CreatePathfinder();

		protected TDefinitionNodeNetwork GetDefinitionNodeNetwork()
		{
			var definitionNodeNetworkProvider = GameObj.GetComponent<IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>>();
			if (definitionNodeNetworkProvider == null)
			{
				throw new NoDefinitionNodeNetworkException($"{GetType().Name}: Could not find a component that implements {typeof(IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>)}.");
			}
			var definitionNodeNetwork = definitionNodeNetworkProvider.GenerateGrid2D();
			if (definitionNodeNetwork == null)
			{
				throw new NoDefinitionNodeNetworkException($"{GetType().Name}: Found a component that implements {typeof(IDefinitionNodeNetworkProvider<TDefinitionNodeNetwork>)} but it could not generate a nodenetwork.");
			}
			return definitionNodeNetwork;
		}

		void ICmpInitializable.OnActivate() { }

		void ICmpInitializable.OnDeactivate()
		{
			_pathfinder?.Stop();
		}
	}
}
