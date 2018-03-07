using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	public class FlowFieldAlgorithm : IPathFindAlgorithm<DijkstraNodeGrid, FlowField>
	{
		private readonly PotentialFieldAlgorithm _potentialFieldAlgorithm;
		private readonly ConcurrentCache<IPathRequest, FlowField> _flowFieldCache;

		public FlowFieldAlgorithm(int cacheSize, int amountOfNodes)
		{
			_potentialFieldAlgorithm = new PotentialFieldAlgorithm(0, amountOfNodes);
			if (cacheSize > 0)
				_flowFieldCache = new ConcurrentCache<IPathRequest, FlowField>(cacheSize, new SingleSourcePathRequestComparer());
		}

		public FlowField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, IPathRequest pathRequest, out bool succes)
		{
			if (_flowFieldCache == null || !_flowFieldCache.TryGetValue(pathRequest, out var flowField))
			{
				var potentialField = _potentialFieldAlgorithm.FindPath(dijkstraNodeNetwork, pathRequest, out succes);
				flowField = new FlowField(potentialField);
				_flowFieldCache?.Add(pathRequest, flowField);
			}
			succes = flowField[pathRequest.PathStart].Length > 0;
			return flowField;
		}
	}
}