using System;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.PathfindEngine.Exceptions;
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
			if (pathRequest.AgentSize % 2 == 0) throw new InvalidAgentSizeException("Potential fields only support uneven agent sizes such as 1,3,5 etc.");

			if (_potentialFieldCache == null || !_potentialFieldCache.TryGetValue(pathRequest, out var potentialField))
			{
				var pathfindingNetwork = dijkstraNodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);

				if (_dijkstraAlgorithm.FindPath(pathfindingNetwork, dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Array, pathRequest.PathEnd, pathRequest.AgentSize, pathRequest.CollisionCategory))
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
			var offset = GridClearanceHelper.GridNodeOffset(pathRequest.AgentSize, dijkstraNodeNetwork.DefinitionNodeGrid.Transformer.Scale);
			succes = potentialField.GetHeading(nodeWorldPosition + offset).Length > 0;
			return potentialField;
		}

		public static PotentialField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, DijkstraNode[] pathfindingNetwork, int targetNodeIndex, IPathRequest pathRequest)
		{
			var pathfindingNodeGrid = new Array2D<DijkstraNode>(pathfindingNetwork, dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Width, dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Height);
			var potentialNodes = new Array2D<float>(dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Width, dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Height);
			var nodeOffset = pathRequest.AgentSize / 2;
			for (var y = 0; y < potentialNodes.Height; y++)
			{
				var gridY = y - nodeOffset;
				for (var x = 0; x < potentialNodes.Width; x++)
				{
					var gridX = x - nodeOffset;
					if (gridY < 0 || gridX < 0) potentialNodes[x, y] = float.NaN;
					else
					{
						var currentNodeIndex = pathfindingNodeGrid.ToIndex(gridX, gridY);
						if (currentNodeIndex == targetNodeIndex) potentialNodes[x, y] = 0f;
						else
						{
							ref var dijkstraNode = ref pathfindingNetwork[currentNodeIndex];
							potentialNodes[x, y] = dijkstraNode.GCost;
						}
					}
				}
			}
			ref var targetDefinitionNode = ref dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Array[targetNodeIndex];
			var targetNodePosition = new Point2((int)targetDefinitionNode.Position.X + nodeOffset, (int)targetDefinitionNode.Position.Y + nodeOffset);
			return new PotentialField(dijkstraNodeNetwork.DefinitionNodeGrid.Transformer, targetNodePosition, potentialNodes);
		}

		public PathRequest<PotentialField> CreatePathRequest(IPathfinder<PotentialField> pathfinder, IDefinitionNodeNetwork definitionNodes, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			switch (definitionNodes)
			{
				case IDefinitionNodeGrid definitionNodeGrid:
					var offset = -GridClearanceHelper.GridNodeOffset(agentSize, definitionNodeGrid.Transformer.Scale);
					var startNode = definitionNodeGrid.GetNodeIndex(x1 + offset.X, y1 + offset.Y);
					var endNode = definitionNodeGrid.GetNodeIndex(x2 + offset.X, y2 + offset.Y);
					return PathRequest.Create(pathfinder, startNode, endNode, collisionLayer, agentSize);
				default:
					throw new NotSupportedException($"{definitionNodes.GetType()} is not supported");
			}
		}
	}
}
