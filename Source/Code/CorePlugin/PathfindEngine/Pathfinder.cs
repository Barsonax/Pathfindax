using System;
using System.Collections.Generic;
using System.Linq;
using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Threading;

namespace Pathfindax.PathfindEngine
{
	public class Pathfinder<TNode> : IProcesser<Vector2[], PathRequest>
		where TNode : INode
	{
		private readonly IList<INodeGrid<TNode>> _nodeGrids;
		private readonly IPathFindAlgorithm<TNode> _algorithm;
		private readonly IList<IPathPostProcess> _pathPostProcesses;

		/// <summary>
		/// Initialises a new pathfinder with a algorithm and optional post processing steps.
		/// </summary>
		/// <param name="nodeGrids">The nodegrids that will be used to solve paths</param>
		/// <param name="pathFindAlgorithm">The algorithm that will be used to solve paths</param>
		/// <param name="pathPostProcesses">The post processing steps that will be applied after the <see cref="IPathFindAlgorithm{TNode}"/> found a path</param>
		public Pathfinder(IList<INodeGrid<TNode>> nodeGrids, IPathFindAlgorithm<TNode> pathFindAlgorithm, IList<IPathPostProcess> pathPostProcesses = null)
		{
			if(nodeGrids.Count > 1) throw new NotSupportedException("Hierachical pathfinding is not yet implemented. Please use only 1 nodegrid at this time.");
			_algorithm = pathFindAlgorithm;
			_pathPostProcesses = pathPostProcesses;
			_nodeGrids = nodeGrids;
		}

		/// <summary>
		/// Solves a <see cref="PathRequest"/>
		/// </summary>
		/// <param name="pathRequest"></param>
		/// <returns>The path from <see cref="PathRequest.PathStart"/> to <see cref="PathRequest.PathEnd"/></returns>
		public Vector2[] Process(PathRequest pathRequest)
		{
			var nodeGrid = _nodeGrids[0]; //TODO implement hierachical pathfinding here
			var path = _algorithm.FindPath(nodeGrid, pathRequest.PathStart, pathRequest.PathEnd);
			if (path == null) return null;
			if (_pathPostProcesses != null)
			{
				foreach (var postProcess in _pathPostProcesses)
				{
					path = postProcess.Process(path);
				}
			}
			return path.Select(x => x.WorldPosition).ToArray();
		}
	}
}
