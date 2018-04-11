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

		public PotentialFieldAlgorithm(int amountOfNodes)
		{
			_dijkstraAlgorithm = new DijkstraAlgorithm(amountOfNodes);
		}

		public PotentialField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, IPathRequest pathRequest)
		{
			var pathfindingNetwork = dijkstraNodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);

			_dijkstraAlgorithm.Start(pathfindingNetwork, dijkstraNodeNetwork.DefinitionNodeGrid.NodeArray, pathRequest.PathEnd, pathRequest.PathStart, pathRequest.AgentSize, pathRequest.CollisionCategory);
			_dijkstraAlgorithm.Step(-1);
			return FindPath(dijkstraNodeNetwork, pathfindingNetwork, pathRequest.PathEnd, pathRequest);
		}

		public bool ValidatePath(DijkstraNodeGrid dijkstraNodeNetwork, IPathRequest pathRequest, PotentialField potentialField)
		{
			ref var startDefinitionNode = ref dijkstraNodeNetwork.DefinitionNodeGrid.NodeArray[pathRequest.PathStart];
			var nodeWorldPosition = potentialField.GridTransformer.ToWorld(startDefinitionNode.Position);
			return potentialField.GetHeading(nodeWorldPosition).Length > 0;
		}

		public PotentialField GetDefaultPath(DijkstraNodeGrid nodeNetwork, IPathRequest pathRequest)
		{
			return null;
		}

		public static PotentialField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, DijkstraNode[] pathfindingNetwork, int targetNodeIndex, IPathRequest pathRequest)
		{
			var potentialNodes = new Array2D<float>(dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Width, dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Height);
			for (var i = 0; i < pathfindingNetwork.Length; i++)
			{
				potentialNodes.Array[i] = pathfindingNetwork[i].Priority;
			}

			var targetNodePosition = potentialNodes.ToGrid(targetNodeIndex);
			return new PotentialField(dijkstraNodeNetwork.DefinitionNodeGrid.Transformer, targetNodePosition, potentialNodes);
		}
	}
}