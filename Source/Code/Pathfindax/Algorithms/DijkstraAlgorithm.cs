using System;
using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Algorithm for potential and flow fields. Not to be used directly.
	/// </summary>
	public class DijkstraAlgorithm
	{
		public const float ClearanceBlockedCost = 1000000000000000f; //Arbitrary large cost.
		public bool FindPath(DijkstraNode[] pathfindingNetwork, DijkstraNode targetNode, DijkstraNode startNode, IPathRequest pathRequest)
		{
			ResetNetwork(pathfindingNetwork);
			var openSet = new MinHeap<DijkstraNode>(pathfindingNetwork.Length);
			var closedSet = new HashSet<DijkstraNode>();

			openSet.Add(targetNode);
			while (openSet.Count > 0)
			{
				var currentNode = openSet.RemoveFirst();
				closedSet.Add(currentNode);

				foreach (var connection in currentNode.DefinitionNode.Connections)
				{
					var toNode = NodePointer.Dereference(connection.To, pathfindingNetwork);
					if ((connection.CollisionCategory & pathRequest.CollisionCategory) != 0 || closedSet.Contains(toNode)) continue;

					var newMovementCostToNeighbour = toNode.Clearance < pathRequest.AgentSize ?
						ClearanceBlockedCost :
						currentNode.GCost + GetDistance(currentNode.DefinitionNode, toNode.DefinitionNode) * currentNode.DefinitionNode.MovementCostModifier;
					if (newMovementCostToNeighbour < toNode.GCost || !openSet.Contains(toNode))
					{
						toNode.GCost = newMovementCostToNeighbour;
						if (!openSet.Contains(toNode))
							openSet.Add(toNode);
					}
				}
			}
			return true;
		}

		private void ResetNetwork(DijkstraNode[] pathfindingNetwork)
		{
			for (int i = 0; i < pathfindingNetwork.Length; i++)
			{
				pathfindingNetwork[i].GCost = 0;
			}
		}

		private static float GetDistance(DefinitionNode sourceNodeA, DefinitionNode sourceNodeB)
		{
			var dstX = Math.Abs(sourceNodeA.Position.X - sourceNodeB.Position.X);
			var dstY = Math.Abs(sourceNodeA.Position.Y - sourceNodeB.Position.Y);
			return dstY + dstX;
		}
	}
}
