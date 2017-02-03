using System;
using System.Collections.Generic;
using System.Linq;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	public class PathRequestProcesser<TNodeNetwork> : IProcesser<CompletedPath, PathRequest>
		where TNodeNetwork : INodeNetworkBase
	{
		private readonly IList<TNodeNetwork> _nodeGrids;
		private readonly IPathFindAlgorithm<TNodeNetwork> _algorithm;
		private readonly IList<IPathPostProcess> _pathPostProcesses;

		/// <summary>
		/// Initialises a new <see cref="PathRequestProcesser{TNodeNetwork}"/> with a <see cref="IPathFindAlgorithm{TNodeNetwork}"/> and optional post processing steps.
		/// </summary>
		/// <param name="nodeGrids">The nodegrids that will be used to solve paths</param>
		/// <param name="pathFindAlgorithm">The algorithm that will be used to solve paths</param>
		/// <param name="pathPostProcesses">The post processing steps that will be applied after the <see cref="IPathFindAlgorithm{TNodeNetwork}"/> found a path</param>
		public PathRequestProcesser(IList<TNodeNetwork> nodeGrids, IPathFindAlgorithm<TNodeNetwork> pathFindAlgorithm, IList<IPathPostProcess> pathPostProcesses = null)
		{
			if (nodeGrids.Count > 1) throw new NotSupportedException("Hierachical pathfinding is not yet implemented. Please use only 1 nodegrid at this time.");
			_algorithm = pathFindAlgorithm;
			_pathPostProcesses = pathPostProcesses;
			_nodeGrids = nodeGrids;
		}

		/// <summary>
		/// Solves a <see cref="PathRequest"/>
		/// </summary>
		/// <param name="pathRequest"></param>
		/// <returns>A <see cref="CompletedPath"/> object containing the solved path if succesfull/></returns>
		public CompletedPath Process(PathRequest pathRequest)
		{
			var nodeGrid = _nodeGrids[0]; //TODO implement hierachical pathfinding here
			var path = _algorithm.FindPath(nodeGrid, pathRequest.PathStart, pathRequest.PathEnd);
			if (path == null) return new CompletedPath(null, false, pathRequest.Callback);
			if (_pathPostProcesses != null)
			{
				foreach (var postProcess in _pathPostProcesses)
				{
					path = postProcess.Process(path);
				}
			}
			return new CompletedPath(path.Select(x => x.Position).ToArray(), true, pathRequest.Callback);
		}
	}
}
