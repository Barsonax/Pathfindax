using System;
using System.Collections.Generic;
using System.Threading;
using Pathfindax.Algorithms;
using Pathfindax.Collections.Interfaces;
using Pathfindax.Graph;
using Pathfindax.Paths;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	public class PathfindaxManager : IPathfindaxManager
	{
		private readonly List<DynamicPotentialFieldUpdater> _dynamicPotentialFieldUpdaters = new List<DynamicPotentialFieldUpdater>();
		private readonly IUpdatableSynchronizationContext _synchronizationContext;

		/// <summary>
		/// Creates a new <see cref="PathfindaxManager"/>
		/// </summary>
		/// <param name="synchronizationContext">The synchronization context that will be used to post the callbacks of the completed paths to. If none is supplied the current threads <see cref="SynchronizationContext"/> will be used</param>
		public PathfindaxManager(IUpdatableSynchronizationContext synchronizationContext = null)
		{
			_synchronizationContext = synchronizationContext ?? new SynchronizationContextAdapter(SynchronizationContext.Current ?? new SynchronizationContext());
		}

		public void Clear()
		{
			_dynamicPotentialFieldUpdaters.Clear();
		}

		public void Update(float time)
		{
			_synchronizationContext.Update();

			foreach (var dynamicPotentialFieldUpdater in _dynamicPotentialFieldUpdaters)
			{
				dynamicPotentialFieldUpdater.Update(time);
			}
		}

		public void CreatePotentialFieldUpdater(DynamicPotentialField dynamicPotentialField, float updateInterval)
		{
			var updater = new DynamicPotentialFieldUpdater(dynamicPotentialField, updateInterval);
			_dynamicPotentialFieldUpdaters.Add(updater);
			updater.Disposed += o => _dynamicPotentialFieldUpdaters.Remove(o);
		}



		public Pathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> CreatePathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath>(
			TDefinitionNodeNetwork definitionNodeNetwork,
			IPathFindAlgorithm<TThreadNodeNetwork, TPath> pathFindAlgorithm,
			Func<TDefinitionNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath>, ICache<IPathRequest, TPath>, PathRequestProcesser<TThreadNodeNetwork, TPath>> processerConstructor,
			ICache<IPathRequest, TPath> pathCache,
			int threads = 1)
			where TDefinitionNodeNetwork : IDefinitionNodeNetwork
			where TThreadNodeNetwork : IPathfindNodeNetwork
			where TPath : class, IPath
		{
			if (threads < 1) throw new ArgumentException("There is a minimum of 1 thread");
			return new Pathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath>(_synchronizationContext, definitionNodeNetwork, pathFindAlgorithm, processerConstructor, pathCache, threads);
		}

		IPathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> IPathfindaxManager.CreatePathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath>(
			TDefinitionNodeNetwork definitionNodeNetwork, 
			IPathFindAlgorithm<TThreadNodeNetwork, TPath> pathFindAlgorithm, 
			Func<TDefinitionNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath>, ICache<IPathRequest, TPath>, PathRequestProcesser<TThreadNodeNetwork, TPath>> processerConstructor, 
			ICache<IPathRequest, TPath> pathCache, 
			int threads)
		{
			return CreatePathfinder(definitionNodeNetwork, pathFindAlgorithm, processerConstructor, pathCache, threads);
		}
	}
}
