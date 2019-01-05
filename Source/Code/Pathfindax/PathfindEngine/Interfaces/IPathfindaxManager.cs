using System;
using Pathfindax.Algorithms;
using Pathfindax.Collections.Interfaces;
using Pathfindax.Graph;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	public interface IPathfindaxManager
	{
		void Clear();
		void Update(float time);
		void CreatePotentialFieldUpdater(DynamicPotentialField dynamicPotentialField, float updateInterval);

		IPathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> CreatePathfinder<TDefinitionNodeNetwork, TThreadNodeNetwork, TPath>(
			TDefinitionNodeNetwork sourceNodeNetwork,
			IPathFindAlgorithm<TThreadNodeNetwork, TPath> pathFindAlgorithm,
			Func<TDefinitionNodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath>, ICache<IPathRequest, TPath>, PathRequestProcesser<TThreadNodeNetwork, TPath>> processerConstructor,
			ICache<IPathRequest, TPath> pathCache,
			int threads = 1)
		where TDefinitionNodeNetwork : IDefinitionNodeNetwork
		where TThreadNodeNetwork : IPathfindNodeNetwork
		where TPath : class, IPath;
	}
}