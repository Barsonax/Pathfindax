using System;
using System.Diagnostics;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	public class FlowFieldAlgorithm : IPathFindAlgorithm<DijkstraNodeGrid>
	{
		private readonly PotentialFieldAlgorithm _potentialFieldAlgorithm = new PotentialFieldAlgorithm(0);
		private readonly ConcurrentCache<PathRequest, FlowField> _flowFieldCache;

		public FlowFieldAlgorithm(int cacheSize)
		{
			if (cacheSize > 0)
				_flowFieldCache = new ConcurrentCache<PathRequest, FlowField>(cacheSize, new SingleSourcePathRequestComparer());
		}

		IPath IPathFindAlgorithm<DijkstraNodeGrid>.FindPath(DijkstraNodeGrid nodeNetwork, PathRequest pathRequest) => FindPath(nodeNetwork, pathRequest);
		public FlowField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, PathRequest pathRequest)
		{
			try
			{
				if (_flowFieldCache == null || !_flowFieldCache.TryGetValue(pathRequest, out var flowField))
				{				
					var potentialField = _potentialFieldAlgorithm.FindPath(dijkstraNodeNetwork, pathRequest);
					var sw = Stopwatch.StartNew();
					flowField = new FlowField(potentialField);
					Debug.WriteLine($"Flowfield created in {sw.ElapsedMilliseconds} ms.");
					_flowFieldCache?.Add(pathRequest, flowField);
				}
				return flowField;
			}
			catch (Exception ex)
			{
				Debug.WriteLine(ex);
				Debugger.Break();
				return null;
			}
		}

		public PathRequest CreatePathRequest(IPathfinder<IDefinitionNodeNetwork> pathfinder, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return _potentialFieldAlgorithm.CreatePathRequest(pathfinder, x1, y1, x2, y2, collisionLayer);
		}
	}
}
