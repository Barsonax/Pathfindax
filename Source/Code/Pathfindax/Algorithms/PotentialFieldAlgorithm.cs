using Duality;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Algorithms
{
	public class PotentialFieldAlgorithm : IPathFindAlgorithm<DijkstraNodeGrid, PotentialField>
	{
		private readonly DijkstraAlgorithm _dijkstraAlgorithm;
		private readonly ConcurrentCache<IPathRequest, PotentialField> _potentialFieldCache;

		public PotentialFieldAlgorithm(int cacheSize, int amountOfNodes)
		{
			_dijkstraAlgorithm = new DijkstraAlgorithm(amountOfNodes);
			if (cacheSize > 0)
				_potentialFieldCache = new ConcurrentCache<IPathRequest, PotentialField>(cacheSize, new SingleSourcePathRequestComparer());
		}

		public PotentialField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, IPathRequest pathRequest, out bool succes)
		{
			if (_potentialFieldCache == null || !_potentialFieldCache.TryGetValue(pathRequest, out var potentialField))
			{
				var pathfindingNetwork = dijkstraNodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);

				_dijkstraAlgorithm.StartFindPath(pathfindingNetwork, dijkstraNodeNetwork.DefinitionNodeGrid.NodeArray, pathRequest.PathEnd);
				if (_dijkstraAlgorithm.FindPath(pathfindingNetwork, dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Array, pathRequest.AgentSize, pathRequest.CollisionCategory))
				{
					potentialField = FindPath(dijkstraNodeNetwork, pathfindingNetwork, pathRequest.PathEnd, pathRequest);
				}
				else
				{
					ref var targetDefinitionNode = ref dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Array[pathRequest.PathEnd];
					potentialField = new PotentialField(dijkstraNodeNetwork.DefinitionNodeGrid.Transformer, (Point2)targetDefinitionNode.Position);
				}
				_potentialFieldCache?.Add(pathRequest, potentialField);
			}
			ref var startDefinitionNode = ref dijkstraNodeNetwork.DefinitionNodeGrid.NodeArray[pathRequest.PathStart];
			var nodeWorldPosition = potentialField.GridTransformer.ToWorld(startDefinitionNode.Position);
			succes = potentialField.GetHeading(nodeWorldPosition).Length > 0;
			return potentialField;
		}

		public static PotentialField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, DijkstraNode[] pathfindingNetwork, int targetNodeIndex, IPathRequest pathRequest)
		{
			var potentialNodes = new Array2D<float>(dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Width, dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Height);
			for (int i = 0; i < potentialNodes.Array.Length; i++)
			{
				if (i == targetNodeIndex) potentialNodes.Array[i] = 0f;
				else
				{
					ref var dijkstraNode = ref pathfindingNetwork[i];
					potentialNodes.Array[i] = dijkstraNode.Priority;
				}
			}

			var targetNodePosition = dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.ToGrid(targetNodeIndex);
			return new PotentialField(dijkstraNodeNetwork.DefinitionNodeGrid.Transformer, targetNodePosition, potentialNodes);
		}
	}
}
