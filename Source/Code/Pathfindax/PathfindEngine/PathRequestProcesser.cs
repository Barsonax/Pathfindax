using System.Collections.Generic;
using System.Linq;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
    /// <summary>
    /// Processes a <see cref="PathRequest"/>
    /// </summary>
    /// <typeparam name="TNodeNetwork"></typeparam>
    public class PathRequestProcesser<TNodeNetwork> : IProcesser<PathRequest>
		where TNodeNetwork : INodeNetwork
	{
		private readonly TNodeNetwork _nodeNetwork;
		private readonly IPathFindAlgorithm<TNodeNetwork> _algorithm;
		private readonly IList<IPathPostProcess> _pathPostProcesses;

		/// <summary>
		/// Initialises a new <see cref="PathRequestProcesser{TNodeNetwork}"/> with a <see cref="IPathFindAlgorithm{TNodeNetwork}"/> and optional post processing steps.
		/// </summary>
		/// <param name="nodeNetwork">The <typeparamref name="TNodeNetwork"/> that will be used to solve paths</param>
		/// <param name="pathFindAlgorithm">The <see cref="IPathFindAlgorithm{TNodeNetwork}"/> that will be used to solve paths</param>
		/// <param name="pathPostProcesses">The post processing steps that will be applied after the <see cref="IPathFindAlgorithm{TNodeNetwork}"/> found a path</param>
		public PathRequestProcesser(TNodeNetwork nodeNetwork, IPathFindAlgorithm<TNodeNetwork> pathFindAlgorithm, IList<IPathPostProcess> pathPostProcesses = null)
		{
			_algorithm = pathFindAlgorithm;
			_pathPostProcesses = pathPostProcesses;
			_nodeNetwork = nodeNetwork;
		}

		/// <summary>
		/// Processes a <see cref="PathRequest"/>
		/// </summary>
		/// <param name="pathRequest"></param>
		public void Process(PathRequest pathRequest)
		{
			var path = _algorithm.FindPath(_nodeNetwork, pathRequest);
			if (_pathPostProcesses != null && path != null)
			{
				foreach (var postProcess in _pathPostProcesses)
				{					
					path = postProcess.Process(path, pathRequest);
				}
			}
            pathRequest.FinishSolvePath(path?.ToArray());
		}
	}
}
