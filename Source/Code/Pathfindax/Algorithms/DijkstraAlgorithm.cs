using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Algorithm for potential and flow fields. Not to be used directly except for testing purposes.
	/// </summary>
	public class DijkstraAlgorithm : IPathFindAlgorithm<IPathfindNodeNetwork<DijkstraNode>, NodePath>
	{
		public IEnumerable<int> OpenSet => _openSet;
		public IEnumerable<int> ClosedSet => _closedSet;

		private readonly IndexMinHeap<DijkstraNode> _openSet;
		private readonly LookupArray _closedSet;
		private readonly EuclideanDistance _costFunction = new EuclideanDistance();
		private readonly PathRetracer<DijkstraNode> _pathRetracer = new PathRetracer<DijkstraNode>(GetParent);

		public DijkstraAlgorithm(int amountOfNodes)
		{
			_openSet = new IndexMinHeap<DijkstraNode>(amountOfNodes);
			_closedSet = new LookupArray(amountOfNodes);
		}

		public NodePath FindPath(IPathfindNodeNetwork<DijkstraNode> nodeNetwork, IPathRequest pathRequest, out bool succes)
		{
			if (pathRequest.PathStart == pathRequest.PathEnd)
			{
				succes = true;
				return NodePath.GetEmptyPath(nodeNetwork, pathRequest.PathStart);
			}
			var pathfindingNetwork = nodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);

			if (!(pathfindingNetwork[pathRequest.PathStart].Clearance >= pathRequest.AgentSize) || !(pathfindingNetwork[pathRequest.PathEnd].Clearance >= pathRequest.AgentSize))
			{
				succes = false;
				return NodePath.GetEmptyPath(nodeNetwork, pathRequest.PathStart);
			}

			StartFindPath(pathfindingNetwork, nodeNetwork.DefinitionNodeNetwork.NodeArray, pathRequest.PathStart);
			if (FindPath(pathfindingNetwork, nodeNetwork.DefinitionNodeNetwork.NodeArray, pathRequest.AgentSize, pathRequest.CollisionCategory))
			{
				var path = _pathRetracer.RetracePath(pathfindingNetwork, nodeNetwork.DefinitionNodeNetwork.NodeArray, pathRequest.PathStart, pathRequest.PathEnd);

				succes = true;
				return new NodePath(nodeNetwork.DefinitionNodeNetwork.NodeArray, path, nodeNetwork.DefinitionNodeNetwork.Transformer);
			}

			succes = false;
			return NodePath.GetEmptyPath(nodeNetwork, pathRequest.PathStart);
		}

		public void StartFindPath(DijkstraNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, int targetNodeIndex)
		{
			ResetNetwork(pathfindingNetwork);
			_openSet.AssignArray(pathfindingNetwork);
			_closedSet.Clear();
			_openSet.Add(targetNodeIndex);
			pathfindingNetwork[targetNodeIndex].Priority = 0f;
		}

		public bool FindPath(DijkstraNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, float neededClearance, PathfindaxCollisionCategory collisionCategory, int stepsToRun = -1)
		{
			while (_openSet.Count > 0 && stepsToRun != 0)
			{
				if (stepsToRun > 0) stepsToRun--;
				var currentNodeIndex = _openSet.RemoveFirst();
				ref var currentNode = ref pathfindingNetwork[currentNodeIndex];
				ref var currentDefinitionNode = ref definitionNodes[currentNodeIndex];
				_closedSet.Occupy(currentNodeIndex);

				foreach (var connection in currentDefinitionNode.Connections)
				{
					if ((connection.CollisionCategory & collisionCategory) != 0 || _closedSet.Contains(connection.To)) continue;
					ref var toNode = ref pathfindingNetwork[connection.To];
					if (toNode.Clearance < neededClearance)
					{
						toNode.Priority = float.NaN;
					}
					else
					{
						ref var toDefinitionNode = ref definitionNodes[connection.To];
						var newMovementCostToNeighbour = currentNode.Priority + _costFunction.GetDistance(currentDefinitionNode.Position, toDefinitionNode.Position) * currentDefinitionNode.MovementCostModifier;
						if (newMovementCostToNeighbour < toNode.Priority || !_openSet.Contains(connection.To))
						{
							toNode.Priority = newMovementCostToNeighbour;
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
			return _openSet.Count == 0;
		}

		private void ResetNetwork(DijkstraNode[] pathfindingNetwork)
		{
			for (var i = 0; i < pathfindingNetwork.Length; i++)
			{
				pathfindingNetwork[i].Priority = float.NaN;
			}
		}

		private static int GetParent(DijkstraNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, int nodeIndex)
		{
			var currentParent = -1;
			var currentPriority = float.MaxValue;
			foreach (var connection in definitionNodes[nodeIndex].Connections)
			{
				ref var node = ref pathfindingNetwork[connection.To];
				if (node.Priority < currentPriority)
				{
					currentParent = connection.To;
					currentPriority = node.Priority;
				}
			}
			return currentParent;
		}
	}
}
