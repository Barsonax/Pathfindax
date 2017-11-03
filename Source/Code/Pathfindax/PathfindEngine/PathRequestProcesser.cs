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
		where TNodeNetwork : IPathfindNodeNetwork
	{
		public readonly TNodeNetwork NodeNetwork;
		private readonly IPathFindAlgorithm<TNodeNetwork> _algorithm;

		/// <summary>
		/// Initialises a new <see cref="PathRequestProcesser{TNodeNetwork}"/> with a <see cref="IPathFindAlgorithm{TNodeNetwork}"/> and optional post processing steps.
		/// </summary>
		/// <param name="nodeNetwork">The <typeparamref name="TNodeNetwork"/> that will be used to solve paths</param>
		/// <param name="pathFindAlgorithm">The <see cref="IPathFindAlgorithm{TNodeNetwork}"/> that will be used to solve paths</param>
		public PathRequestProcesser(TNodeNetwork nodeNetwork, IPathFindAlgorithm<TNodeNetwork> pathFindAlgorithm)
		{
			_algorithm = pathFindAlgorithm;
			NodeNetwork = nodeNetwork;
		}

		/// <summary>
		/// Processes a <see cref="PathRequest"/>
		/// </summary>
		/// <param name="pathRequest"></param>
		public void Process(PathRequest pathRequest)
		{
			var path = _algorithm.FindPath(NodeNetwork, pathRequest);
            if (path == null)
            {
                pathRequest.FinishSolvePath(null);
            }
            else
            {				
				pathRequest.FinishSolvePath(NodeNetwork.DefinitionNodeNetwork.CreateCompletedPath(pathRequest, path));
			}           
		}
	}
}
