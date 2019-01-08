using System.Diagnostics;
using Pathfindax.Algorithms;
using Pathfindax.Collections.Interfaces;
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
		private readonly ICache<IPathRequest, TPath> _pathCache;

		/// <summary>
		/// Initialises a new <see cref="PathRequestProcesser{TThreadNodeNetwork, TPath}"/> with a <see cref="IPathFindAlgorithm{TThreadNodeNetwork, TPath}"/> and optional post processing steps.
		/// </summary>
		/// <param name="nodeNetwork">The <typeparamref name="TThreadNodeNetwork"/> that will be used to solve paths</param>
		/// <param name="pathFindAlgorithm">The <see cref="IPathFindAlgorithm{TThreadNodeNetwork, TPath}"/> that will be used to solve paths</param>
		/// <param name="pathCache"></param>
		public PathRequestProcesser(TThreadNodeNetwork nodeNetwork, IPathFindAlgorithm<TThreadNodeNetwork, TPath> pathFindAlgorithm, ICache<IPathRequest, TPath> pathCache)
		{
			_algorithm = pathFindAlgorithm;
			NodeNetwork = nodeNetwork;
			_pathCache = pathCache;
		}

		/// <summary>
		/// Processes a <see cref="PathRequest"/>
		/// </summary>
		/// <param name="pathRequest"></param>
		public void Process(PathRequest<TPath> pathRequest)
		{
			if (_pathCache == null || !_pathCache.TryGetValue(pathRequest, out var path))
			{
				path = _algorithm.FindPath(NodeNetwork, pathRequest);
				_pathCache?.Add(pathRequest, path);
			}
			var succes = path != null ? _algorithm.ValidatePath(NodeNetwork, pathRequest, path) : false;
			if (path == null) path = _algorithm.GetDefaultPath(NodeNetwork, pathRequest);
			Debug.WriteLine(succes ? $"{_algorithm.GetType()} has found a path" : $"{_algorithm.GetType()} did not find a path :(");
			pathRequest.FinishSolvePath(path, succes);
		}
	}
}
