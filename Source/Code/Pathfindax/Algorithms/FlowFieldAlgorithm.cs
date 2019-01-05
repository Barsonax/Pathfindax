using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	public class FlowFieldAlgorithm : IPathFindAlgorithm<DijkstraNodeGrid, FlowField>
	{
		private readonly PotentialFieldAlgorithm _potentialFieldAlgorithm;

		public FlowFieldAlgorithm(int amountOfNodes)
		{
			_potentialFieldAlgorithm = new PotentialFieldAlgorithm(amountOfNodes);
		}

		public FlowField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, IPathRequest pathRequest)
		{
			var potentialField = _potentialFieldAlgorithm.FindPath(dijkstraNodeNetwork, pathRequest);
			return new FlowField(potentialField);
		}

		public FlowField GetDefaultPath(DijkstraNodeGrid nodeNetwork, IPathRequest pathRequest) => null;

		public bool ValidatePath(DijkstraNodeGrid nodeNetwork, IPathRequest pathRequest, FlowField path) => path[pathRequest.PathStart].Length > 0;
	}
}