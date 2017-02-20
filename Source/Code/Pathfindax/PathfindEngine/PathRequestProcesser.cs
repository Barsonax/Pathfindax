using System;
using System.Collections.Generic;
using System.Linq;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine.PathPostProcesses;
using Pathfindax.Primitives;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	public class PathRequestProcesser<TNodeNetwork> : IProcesser<CompletedPath, PathRequest>
		where TNodeNetwork : INodeNetworkBase
	{
		private readonly IList<TNodeNetwork> _nodeNetworks;
		private readonly IPathFindAlgorithm<TNodeNetwork> _algorithm;
		private readonly IList<IPathPostProcess> _pathPostProcesses;
		private readonly IList<IPathPreProcess> _pathPreProcesses;

		/// <summary>
		/// Initialises a new <see cref="PathRequestProcesser{TNodeNetwork}"/> with a <see cref="IPathFindAlgorithm{TNodeNetwork}"/> and optional post processing steps.
		/// </summary>
		/// <param name="nodeNetworks">The nodegrids that will be used to solve paths</param>
		/// <param name="pathFindAlgorithm">The algorithm that will be used to solve paths</param>
		/// <param name="pathPostProcesses">The post processing steps that will be applied after the <see cref="IPathFindAlgorithm{TNodeNetwork}"/> found a path</param>
		/// <param name="pathPreProcesses"></param>
		public PathRequestProcesser(IList<TNodeNetwork> nodeNetworks, IPathFindAlgorithm<TNodeNetwork> pathFindAlgorithm, IList<IPathPreProcess> pathPreProcesses = null, IList<IPathPostProcess> pathPostProcesses = null)
		{
			if (nodeNetworks.Count > 1) throw new NotSupportedException("Support for hierachical pathfinding is not yet implemented. Please use only 1 nodenetwork at this time.");
			_algorithm = pathFindAlgorithm;
			_pathPostProcesses = pathPostProcesses;
			_pathPreProcesses = pathPreProcesses;
			_nodeNetworks = nodeNetworks;
		}

		/// <summary>
		/// Solves a <see cref="PathRequest"/>
		/// </summary>
		/// <param name="pathRequest"></param>
		/// <returns>A <see cref="CompletedPath"/> object containing the solved path if succesfull/></returns>
		public CompletedPath Process(PathRequest pathRequest)
		{
			foreach (var pathPreProcess in _pathPreProcesses)
			{
				pathPreProcess.Process(pathRequest);
			}
			var nodeGrid = _nodeNetworks[0]; //TODO implement hierachical pathfinding here here
			IList<PositionF> path = _algorithm.FindPath(nodeGrid, pathRequest)?.Select(x => x.WorldPosition)?.ToList();
			if (path == null) return new CompletedPath(null, pathRequest);
			if (_pathPostProcesses != null)
			{
				foreach (var postProcess in _pathPostProcesses)
				{					
					path = postProcess.Process(path, pathRequest);
				}
			}
			return new CompletedPath(path.ToArray(), pathRequest);
		}
	}
}
