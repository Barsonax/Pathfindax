using System;
using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Class that implements the A* algorithm to find paths
	/// </summary>
	public class AStarAlgorithm : IPathFindAlgorithm<IPathfindNodeNetwork<AstarNode>>
	{
		public List<DefinitionNode> FindPath(IPathfindNodeNetwork<AstarNode> nodeNetwork, PathRequest pathRequest)
		{
			var pathfindingNetwork = nodeNetwork.GetPathfindingNetwork(pathRequest.CollisionCategory);
			var startNode = NodePointer.Dereference(pathRequest.PathStart.Index, pathfindingNetwork);
			var endNode = NodePointer.Dereference(pathRequest.PathEnd.Index, pathfindingNetwork);
			return FindPath(pathfindingNetwork, startNode, endNode, pathRequest.AgentSize, pathRequest.CollisionCategory);
		}

		private static List<DefinitionNode> FindPath(AstarNode[] pathfindingNetwork, AstarNode startNode, AstarNode targetNode, float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			try
			{
				var sw = new Stopwatch();
				sw.Start();

				var pathSucces = false;
				if (startNode == targetNode)
				{
					return new List<DefinitionNode> { targetNode.DefinitionNode };
				}
				if ((float.IsNaN(startNode.Clearance) || startNode.Clearance >= neededClearance) && 
					(float.IsNaN(targetNode.Clearance) || targetNode.Clearance >= neededClearance))
				{
					var openSet = new MinHeap<AstarNode>(pathfindingNetwork.Length);
					var closedSet = new HashSet<AstarNode>();
					var itterations = 0;
					var neighbourUpdates = 0;
					openSet.Add(startNode);
					while (openSet.Count > 0)
					{
						itterations++;
						var currentNode = openSet.RemoveFirst();
						closedSet.Add(currentNode);

						if (currentNode == targetNode)
						{
							sw.Stop();
							Debug.WriteLine($"Path found in {sw.ElapsedMilliseconds} ms. Itterations: {itterations} Neighbourupdates: {neighbourUpdates}");
							pathSucces = true;
							break;
						}

						foreach (var connection in currentNode.DefinitionNode.Connections)
						{
							var toNode = NodePointer.Dereference(connection.To, pathfindingNetwork);
							if ((connection.CollisionCategory & collisionCategory) != 0 || closedSet.Contains(toNode)) continue;

							if (float.IsNaN(toNode.Clearance) || toNode.Clearance >= neededClearance)
							{
								var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNode.DefinitionNode, toNode.DefinitionNode) * currentNode.DefinitionNode.MovementCostModifier;
								if (newMovementCostToNeighbour < toNode.GCost || !openSet.Contains(toNode))
								{
									toNode.GCost = newMovementCostToNeighbour;
									toNode.HCost = GetDistance(toNode.DefinitionNode, targetNode.DefinitionNode) * currentNode.DefinitionNode.MovementCostModifier;
									toNode.Parent = currentNode.DefinitionNode.Index;
									neighbourUpdates++;
									if (!openSet.Contains(toNode))
										openSet.Add(toNode);
								}
							}
						}
					}
				}
				if (pathSucces)
				{
					return RetracePath(pathfindingNetwork, startNode, targetNode);
				}
				Debug.WriteLine("Did not find a path :(");
				return null;
			}
			catch (Exception ex)
			{
				Debug.WriteLine(ex);
				Debugger.Break();
				return null;
			}
		}

		private static List<DefinitionNode> RetracePath(AstarNode[] pathfindingNetwork, AstarNode startGridNode, AstarNode endGridNode)
		{
			var path = new List<DefinitionNode>();
			var currentNode = endGridNode;

			while (true)
			{
				path.Add(currentNode.DefinitionNode);
				if (currentNode == startGridNode) break;
				currentNode = NodePointer.Dereference(currentNode.Parent, pathfindingNetwork);
			}
			path.Reverse();
			return path;
		}

		private static float GetDistance(DefinitionNode sourceNodeA, DefinitionNode sourceNodeB)
		{
			var dstX = Math.Abs(sourceNodeA.Position.X - sourceNodeB.Position.X);
			var dstY = Math.Abs(sourceNodeA.Position.Y - sourceNodeB.Position.Y);
			return dstY + dstX;
		}
	}
}