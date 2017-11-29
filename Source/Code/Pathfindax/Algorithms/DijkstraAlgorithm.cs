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
		public bool FindPath(DijkstraNode[] pathfindingNetwork, DijkstraNode targetNode, DijkstraNode startNode, IPathRequest pathRequest)
		{
			if (targetNode.Clearance < pathRequest.AgentSize) return false;
			ResetNetwork(pathfindingNetwork);
			var openSet = new MaxHeap<DijkstraNode>(pathfindingNetwork.Length);
			var closedSet = new HashSet<DijkstraNode>();

			openSet.Add(targetNode);
			targetNode.GCost = 0f;
			while (openSet.Count > 0)
			{
				var currentNode = openSet.RemoveFirst();
				closedSet.Add(currentNode);

				foreach (var connection in currentNode.DefinitionNode.Connections)
				{
					var toNode = NodePointer.Dereference(connection.To, pathfindingNetwork);
					if ((connection.CollisionCategory & pathRequest.CollisionCategory) != 0 || closedSet.Contains(toNode)) continue;

					if (toNode.Clearance < pathRequest.AgentSize)
					{
						toNode.GCost = float.NaN;
					}
					else
					{
						var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNode.DefinitionNode, toNode.DefinitionNode) * currentNode.DefinitionNode.MovementCostModifier;
						if (newMovementCostToNeighbour < toNode.GCost || !openSet.Contains(toNode))
						{
							toNode.GCost = newMovementCostToNeighbour;
							if (!openSet.Contains(toNode))
								openSet.Add(toNode);
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

		private static float GetDistance(DefinitionNode dijkstraNodeA, DefinitionNode dijkstraNodeB)
		{
			var dstX = Math.Abs(dijkstraNodeA.Position.X - dijkstraNodeB.Position.X);
			var dstY = Math.Abs(dijkstraNodeA.Position.Y - dijkstraNodeB.Position.Y);
			return dstY + dstX;
		}
	}
}
