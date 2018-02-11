﻿using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Algorithm for potential and flow fields. Not to be used directly.
	/// </summary>
	public class DijkstraAlgorithm
	{
		private readonly IndexMinHeap<DijkstraNode> _openSet;
		private readonly LookupArray _closedSet;
		private readonly EuclideanDistance _costFunction = new EuclideanDistance();

		public DijkstraAlgorithm(int amountOfNodes)
		{
			_openSet = new IndexMinHeap<DijkstraNode>(amountOfNodes);
			_closedSet = new LookupArray(amountOfNodes);
		}

		public bool FindPath(DijkstraNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, int targetNodeIndex, float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			ref var targetNode = ref pathfindingNetwork[targetNodeIndex];
			if (targetNode.Clearance < neededClearance) return false;
			ResetNetwork(pathfindingNetwork);

			_openSet.AssignArray(pathfindingNetwork);
			_closedSet.Clear();

			_openSet.Add(targetNodeIndex);
			targetNode.Priority = 0f;
			while (_openSet.Count > 0)
			{
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
			return true;
		}

		private void ResetNetwork(DijkstraNode[] pathfindingNetwork)
		{
			for (var i = 0; i < pathfindingNetwork.Length; i++)
			{
				pathfindingNetwork[i].Priority = float.NaN;
			}
		}
	}
}
