using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Class that implements the A* algorithm to find paths
	/// </summary>
	public class AStarAlgorithm : IPathFindAlgorithm<IPathfindNodeNetwork<AstarNode>, NodePath>
	{
		public IEnumerable<int> OpenSet => _openSet;
		public IEnumerable<int> ClosedSet => _closedSet;

		private readonly IndexMinHeap<AstarNode> _openSet;
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

			if (!(pathfindingNetwork[pathRequest.PathStart].Clearance >= pathRequest.AgentSize) || !(pathfindingNetwork[pathRequest.PathEnd].Clearance >= pathRequest.AgentSize))
			{
				succes = false;
				return new NodePath(nodeNetwork.DefinitionNodeNetwork.NodeArray, new[] { pathRequest.PathStart }, nodeNetwork.DefinitionNodeNetwork.Transformer);
			}

			StartFindPath(pathfindingNetwork, nodeNetwork.DefinitionNodeNetwork.NodeArray, pathRequest.PathStart, pathRequest.PathEnd, pathRequest.AgentSize, pathRequest.CollisionCategory);
			if (FindPath(pathfindingNetwork, nodeNetwork.DefinitionNodeNetwork.NodeArray, pathRequest.PathEnd, pathRequest.AgentSize, pathRequest.CollisionCategory))
			{
				var path = RetracePath(pathfindingNetwork, pathRequest.PathStart, pathRequest.PathEnd);

				succes = true;
				return new NodePath(nodeNetwork.DefinitionNodeNetwork.NodeArray, path, nodeNetwork.DefinitionNodeNetwork.Transformer);
			}

			succes = false;
			return new NodePath(nodeNetwork.DefinitionNodeNetwork.NodeArray, new[] { pathRequest.PathStart }, nodeNetwork.DefinitionNodeNetwork.Transformer);
		}

		public void StartFindPath(AstarNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, int startNodeIndex, int targetNodeIndex, float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			_openSet.AssignArray(pathfindingNetwork);
			_closedSet.Clear();
			_openSet.Add(startNodeIndex);
		}

		public bool FindPath(AstarNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, int targetNodeIndex, float neededClearance, PathfindaxCollisionCategory collisionCategory, int stepsToRun = -1)
		{
			while (_openSet.Count > 0 && stepsToRun != 0)
			{
				if (stepsToRun > 0) stepsToRun--;
				var currentNodeIndex = _openSet.RemoveFirst();
				if (currentNodeIndex == targetNodeIndex)
				{
					return true;
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
						toNode.Priority = newMovementCostToNeighbour + _heuristic.GetDistance(toDefinitionNode.Position, definitionNodes[targetNodeIndex].Position) * currentDefinitionNode.MovementCostModifier;
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
			return false;
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