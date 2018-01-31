using System.Diagnostics;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Paths;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	/// <summary>
	/// Processes a <see cref="PathRequest"/>
	/// </summary>
	/// <typeparam name="TThreadNodeNetwork"></typeparam>
	/// <typeparam name="TPath"></typeparam>
	public class PathRequestProcesser<TThreadNodeNetwork, TPath> : IProcesser<PathRequest<TPath>>
		where TThreadNodeNetwork : IPathfindNodeNetwork
		where TPath : class, IPath
	{
		public readonly TThreadNodeNetwork NodeNetwork;
		private readonly IPathFindAlgorithm<TThreadNodeNetwork, TPath> _algorithm;

		/// <summary>
		/// Initialises a new <see cref="PathRequestProcesser{TThreadNodeNetwork, TPath}"/> with a <see cref="IPathFindAlgorithm{TThreadNodeNetwork, TPath}"/> and optional post processing steps.
		/// </summary>
		/// <param name="nodeNetwork">The <typeparamref name="TThreadNodeNetwork"/> that will be used to solve paths</param>
		/// <param name="pathFindAlgorithm">The <see cref="IPathFindAlgorithm{TThreadNodeNetwork, TPath}"/> that will be used to solve paths</param>
		public PathRequestProcesser(TThreadNodeNetwork nodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath> pathFindAlgorithm)
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
			var path = _algorithm.FindPath(NodeNetwork, pathRequest, out var succes);
			Debug.WriteLine(succes ? $"Path found" : "Did not find a path :(");
			pathRequest.FinishSolvePath(path, succes);
		}
	}
}
