using System;
using System.Collections.Generic;
using System.Linq;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	public class PathRequestProcesser<TNode> : IProcesser<CompletedPath, PathRequest>
		where TNode : INode
	{
		private readonly IList<INodeGrid<TNode>> _nodeGrids;
		private readonly IPathFindAlgorithm<TNode> _algorithm;
		private readonly IList<IPathPostProcess> _pathPostProcesses;

		/// <summary>
		/// Initialises a new <see cref="PathRequestProcesser{TNode}"/> with a <see cref="IPathFindAlgorithm{TNode}"/> and optional post processing steps.
		/// </summary>
		/// <param name="nodeGrids">The nodegrids that will be used to solve paths</param>
		/// <param name="pathFindAlgorithm">The algorithm that will be used to solve paths</param>
		/// <param name="pathPostProcesses">The post processing steps that will be applied after the <see cref="IPathFindAlgorithm{TNode}"/> found a path</param>
		public PathRequestProcesser(IList<INodeGrid<TNode>> nodeGrids, IPathFindAlgorithm<TNode> pathFindAlgorithm, IList<IPathPostProcess> pathPostProcesses = null)
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
			return new CompletedPath(path.Select(x => x.WorldPosition).ToArray(), true, pathRequest.Callback);
		}
	}
}
