using System;
using System.Collections.Generic;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	public class PathfindaxManager : IPathfindaxManager
	{
		private readonly List<IPathfinder> _pathfinders = new List<IPathfinder>();
		private readonly List<DynamicPotentialFieldUpdater> _dynamicPotentialFieldUpdaters = new List<DynamicPotentialFieldUpdater>();

		public void Clear()
		{
			_pathfinders.Clear();
			_dynamicPotentialFieldUpdaters.Clear();
		}

		public void Update(float time)
		{
			foreach (var pathfinder in _pathfinders)
			{
				pathfinder.ProcessPaths();
			}

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

		IPathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> IPathfindaxManager.CreatePathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath>(TDefinitionNodeNetwork definitionNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath> pathFindAlgorithm, Func<TDefinitionNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath>, PathRequestProcesser<TThreadNodeNetwork, TPath>> processerConstructor, int threads = 1) => CreatePathfinder(definitionNodeNetwork, pathFindAlgorithm, processerConstructor, threads);
		public Pathfinder<TSourceNodeNetwork, TThreadNodeNetwork, TPath> CreatePathfinder<TSourceNodeNetwork, TThreadNodeNetwork, TPath>(TSourceNodeNetwork definitionNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath> pathFindAlgorithm, Func<TSourceNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath>, PathRequestProcesser<TThreadNodeNetwork, TPath>> processerConstructor, int threads = 1)
			where TSourceNodeNetwork : IDefinitionNodeNetwork
			where TThreadNodeNetwork : IPathfindNodeNetwork
			where TPath : class, IPath
		{
			if (threads < 1) throw new ArgumentException("There is a minimum of 1 thread");
			var pathfinder = new Pathfinder<TSourceNodeNetwork, TThreadNodeNetwork, TPath>(definitionNodeNetwork, pathFindAlgorithm, processerConstructor, threads);
			_pathfinders.Add(pathfinder);
			pathfinder.Disposed += o => _pathfinders.Remove(o);
			return pathfinder;
		}
	}
}
