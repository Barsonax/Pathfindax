using System;
using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Class that implements the A* algorithm to find paths
	/// </summary>
	public class AStarAlgorithm : IPathFindAlgorithm<IPathfindNodeNetwork<AstarNode>, NodePath>
	{
		public IEnumerable<int> OpenSet => _openSet;
		private readonly IndexMinHeap<AstarNode> _openSet;

		public IEnumerable<int> ClosedSet => _closedSet;
		private readonly LookupArray _closedSet;
		private readonly List<int> _pathBuffer;
		private readonly IDistanceHeuristic _heuristic;
		private readonly EuclideanDistance _costFunction = new EuclideanDistance();

		public AStarAlgorithm(int amountOfNodes, IDistanceHeuristic heuristic)
		{
			_openSet = new IndexMinHeap<AstarNode>(amountOfNodes);
			_closedSet = new LookupArray(amountOfNodes);
			_pathBuffer = new List<int>();
			_heuristic = heuristic;
		}

		public NodePath FindPath(IPathfindNodeNetwork<AstarNode> nodeNetwork, IPathRequest pathRequest, out bool succes)
		{
			if (pathRequest.PathStart == pathRequest.PathEnd)
			{
				succes = true;
				return new NodePath(nodeNetwork.DefinitionNodeNetwork.NodeArray, new[] { pathRequest.PathStart }, nodeNetwork.DefinitionNodeNetwork.Transformer);
			}
			var pathfindingNetwork = nodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);
			var path = FindPath(pathfindingNetwork, nodeNetwork.DefinitionNodeNetwork.NodeArray, pathRequest.PathStart, pathRequest.PathEnd, pathRequest.AgentSize, pathRequest.CollisionCategory);
			if (path == null)
			{
				succes = false;
				return new NodePath(nodeNetwork.DefinitionNodeNetwork.NodeArray, new[] { pathRequest.PathStart }, nodeNetwork.DefinitionNodeNetwork.Transformer);
			}
			succes = true;
			return new NodePath(nodeNetwork.DefinitionNodeNetwork.NodeArray, path, nodeNetwork.DefinitionNodeNetwork.Transformer);

		}

		public PathRequest<NodePath> CreatePathRequest(IPathfinder<NodePath> pathfinder, IDefinitionNodeNetwork definitionNodes, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			int startNode;
			int endNode;
			switch (definitionNodes)
			{
				case IDefinitionNodeGrid definitionNodeGrid:
					var offset = -GridClearanceHelper.GridNodeOffset(agentSize, definitionNodeGrid.Transformer.Scale);
					startNode = definitionNodeGrid.GetNodeIndex(x1 + offset.X, y1 + offset.Y);
					endNode = definitionNodeGrid.GetNodeIndex(x2 + offset.X, y2 + offset.Y);
					break;
				case IDefinitionNodeNetwork definitionNodeNetwork:
					startNode = definitionNodeNetwork.GetNodeIndex(x1, y1);
					endNode = definitionNodeNetwork.GetNodeIndex(x2, y2);
					break;
				default:
					throw new NotSupportedException($"{definitionNodes.GetType()} is not supported");
			}
			return PathRequest.Create(pathfinder, startNode, endNode, collisionLayer, agentSize);
		}

		private int[] FindPath(AstarNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, int startNodeIndex, int targetNodeIndex, float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			ref var startNode = ref pathfindingNetwork[startNodeIndex];
			ref var targetNode = ref pathfindingNetwork[targetNodeIndex];

			if (startNode.Clearance >= neededClearance && targetNode.Clearance >= neededClearance)
			{
				_openSet.AssignArray(pathfindingNetwork);
				_closedSet.Clear();
				_openSet.Add(startNodeIndex);
				var targetNodePosition = definitionNodes[targetNodeIndex].Position;
				while (_openSet.Count > 0)
				{
					var currentNodeIndex = _openSet.RemoveFirst();
					if (currentNodeIndex == targetNodeIndex)
					{
						return RetracePath(pathfindingNetwork, startNodeIndex, targetNodeIndex);
					}

					ref var currentNode = ref pathfindingNetwork[currentNodeIndex];
					ref var currentDefinitionNode = ref definitionNodes[currentNodeIndex];
					_closedSet.Occupy(currentNodeIndex);

					foreach (var connection in currentDefinitionNode.Connections)
					{
						ref var toNode = ref pathfindingNetwork[connection.To];
						if ((connection.CollisionCategory & collisionCategory) != 0 || _closedSet.Contains(connection.To) || toNode.Clearance < neededClearance) continue;
						ref var toDefinitionNode = ref definitionNodes[connection.To];
						var newMovementCostToNeighbour = currentNode.GCost + _costFunction.GetDistance(currentDefinitionNode.Position, toDefinitionNode.Position) * currentDefinitionNode.MovementCostModifier;
						if (newMovementCostToNeighbour < toNode.GCost || !_openSet.Contains(connection.To))
						{
							toNode.GCost = newMovementCostToNeighbour;
							toNode.Priority = newMovementCostToNeighbour + _heuristic.GetDistance(toDefinitionNode.Position, targetNodePosition) * currentDefinitionNode.MovementCostModifier;
							toNode.Parent = currentNodeIndex;
							if (!_openSet.Contains(connection.To))
								_openSet.Add(connection.To);
							else
							{
								_openSet.Update(connection.To);
							}
						}
					}
				}
			}
			return null;
		}

		private int[] RetracePath(AstarNode[] pathfindingNetwork, int startIndex, int targetIndex)
		{
			_pathBuffer.Clear();
			var currentNode = targetIndex;

			while (true)
			{
				_pathBuffer.Add(currentNode);
				if (currentNode == startIndex) break;
				currentNode = pathfindingNetwork[currentNode].Parent;
			}
			var pathArray = new int[_pathBuffer.Count];
			var reverseCount = _pathBuffer.Count - 1;
			for (int i = 0; i < pathArray.Length; i++)
			{
				pathArray[i] = _pathBuffer[reverseCount];
				reverseCount--;
			}
			return pathArray;
		}
	}
}