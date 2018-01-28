using System;
using System.Runtime.CompilerServices;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Algorithm for potential and flow fields. Not to be used directly.
	/// </summary>
	public class DijkstraAlgorithm
	{
		private readonly IndexMaxHeap<DijkstraNode> _openSet;
		private readonly LookupArray _closedSet;

		public DijkstraAlgorithm(int amountOfNodes)
		{
			_openSet = new IndexMaxHeap<DijkstraNode>(amountOfNodes);
			_closedSet = new LookupArray(amountOfNodes);
		}

		public bool FindPath(DijkstraNode[] pathfindingNetwork, int targetNodeIndex, float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			ref var targetNode = ref pathfindingNetwork[targetNodeIndex];
			if (targetNode.Clearance < neededClearance) return false;
			ResetNetwork(pathfindingNetwork);

			_openSet.AssignArray(pathfindingNetwork);
			_closedSet.Clear();

			_openSet.Add(targetNodeIndex);
			targetNode.GCost = 0f;
			while (_openSet.Count > 0)
			{
				var currentNodeIndex = _openSet.RemoveFirst();
				ref var currentNode = ref pathfindingNetwork[currentNodeIndex];
				_closedSet.Occupy(currentNodeIndex);

				foreach (var connection in currentNode.DefinitionNode.Connections)
				{
					if ((connection.CollisionCategory & collisionCategory) != 0 || _closedSet.Contains(connection.To)) continue;
					ref var toNode = ref pathfindingNetwork[connection.To];
					if (toNode.Clearance < neededClearance)
					{
						toNode.GCost = float.NaN;
					}
					else
					{
						var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNode.DefinitionNode.Position, toNode.DefinitionNode.Position) * currentNode.DefinitionNode.MovementCostModifier;
						if (newMovementCostToNeighbour < toNode.GCost || !_openSet.Contains(connection.To))
						{
							toNode.GCost = newMovementCostToNeighbour;
							if (!_openSet.Contains(connection.To))
								_openSet.Add(connection.To);
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
				pathfindingNetwork[i].GCost = float.NaN;
			}
		}

		private static float GetDistance(in Vector2 position1, in Vector2 position2)
		{
			var dstX = Math.Abs(position1.X - position2.X);
			var dstY = Math.Abs(position1.Y - position2.Y);
			return dstY + dstX;
		}
	}
}
