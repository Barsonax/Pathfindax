using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Paths;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	/// <summary>
	/// Processes a <see cref="PathRequest"/>
	/// </summary>
	/// <typeparam name="TNodeNetwork"></typeparam>
	/// <typeparam name="TPath"></typeparam>
	public class PathRequestProcesser<TNodeNetwork, TPath> : IProcesser<PathRequest<TPath>>
		where TNodeNetwork : IPathfindNodeNetwork
		where TPath : class, IPath
	{
		public readonly TNodeNetwork NodeNetwork;
		private readonly IPathFindAlgorithm<TNodeNetwork, TPath> _algorithm;

		/// <summary>
		/// Initialises a new <see cref="PathRequestProcesser{TNodeNetwork, TPath}"/> with a <see cref="IPathFindAlgorithm{TNodeNetwork, TPath}"/> and optional post processing steps.
		/// </summary>
		/// <param name="nodeNetwork">The <typeparamref name="TNodeNetwork"/> that will be used to solve paths</param>
		/// <param name="pathFindAlgorithm">The <see cref="IPathFindAlgorithm{TNodeNetwork, TPath}"/> that will be used to solve paths</param>
		public PathRequestProcesser(TNodeNetwork nodeNetwork, IPathFindAlgorithm<TNodeNetwork, TPath> pathFindAlgorithm)
		{
			_algorithm = pathFindAlgorithm;
			NodeNetwork = nodeNetwork;
		}

		/// <summary>
		/// Processes a <see cref="PathRequest"/>
		/// </summary>
		/// <param name="pathRequest"></param>
		public void Process(PathRequest<TPath> pathRequest)
		{
			var path = _algorithm.FindPath(NodeNetwork, pathRequest);
            if (path == null)
            {
                pathRequest.FinishSolvePath(null);
            }
            else
            {				
				pathRequest.FinishSolvePath(path);
			}           
		}
	}
}
