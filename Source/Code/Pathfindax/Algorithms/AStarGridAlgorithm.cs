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
	/// Class that implements the A* algorithm for grids to find paths
	/// </summary>
	public class AStarGridAlgorithm : IPathFindAlgorithm<INodeGrid<AstarGridNode>>
	{
		/// <inheritdoc />
		public IList<INode> FindPath(INodeGrid<AstarGridNode> nodeGrid, PathRequest pathRequest)
		{
			var startNode = nodeGrid.GetNode(pathRequest.PathStart);
			var endNode = nodeGrid.GetNode(pathRequest.PathEnd);
			return FindPath(nodeGrid, startNode, endNode, pathRequest.CollsionLayer, pathRequest.AgentSize);
		}

		private IList<INode> FindPath(INodeGrid<AstarGridNode> nodeGrid, AstarGridNode startGridNode, AstarGridNode targetGridNode, PathfindaxCollisionCategory collisionCategory, byte neededClearance)
		{
			try
			{
				var sw = new Stopwatch();
				sw.Start();

				var pathSucces = false;
				if (startGridNode == targetGridNode)
				{
					return new List<INode> { targetGridNode };
				}
				if (startGridNode.GetTrueClearance(collisionCategory) >= neededClearance && targetGridNode.GetTrueClearance(collisionCategory) >= neededClearance)
				{
					var openSet = new MinHeap<AstarGridNode>(nodeGrid.NodeCount);
					var closedSet = new HashSet<AstarGridNode>();
					var itterations = 0;
					var neighbourUpdates = 0;
					openSet.Add(startGridNode);
					while (openSet.Count > 0)
					{
						itterations++;
						var currentNode = openSet.RemoveFirst();
						closedSet.Add(currentNode);

						if (currentNode == targetGridNode)
						{
							sw.Stop();
							Debug.WriteLine($"Path found in {sw.ElapsedMilliseconds} ms. Itterations: {itterations} Neighbourupdates: {neighbourUpdates}");
							pathSucces = true;
							break;
						}

						foreach (var connection in currentNode.Connections)
						{
							if (((connection.CollisionCategory & collisionCategory) != 0) || closedSet.Contains(connection.To))
							{
								continue;
							}

							if (connection.To.GetTrueClearance(collisionCategory) >= neededClearance)
							{
								var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNode, connection.To) + currentNode.MovementPenalty;
								if (newMovementCostToNeighbour < connection.To.GCost || !openSet.Contains(connection.To))
								{
									connection.To.GCost = newMovementCostToNeighbour;
									connection.To.HCost = GetDistance(connection.To, targetGridNode);
									connection.To.Parent = currentNode;
									neighbourUpdates++;
									if (!openSet.Contains(connection.To))
										openSet.Add(connection.To);
								}
							}
						}
					}
				}
				if (pathSucces)
				{
					return RetracePath(startGridNode, targetGridNode);
				}
				Debug.WriteLine("Did not find a path :(");
				return null;
			}
			catch (Exception ex)
			{
				Debug.WriteLine(ex);
				return null;
			}
		}

		private IList<INode> RetracePath(AstarGridNode startGridNode, AstarGridNode endGridNode)
		{
			var path = new List<INode>();
			var currentNode = endGridNode;

			while (true)
			{
				path.Add(currentNode);
				if (currentNode == startGridNode) break;
				currentNode = currentNode.Parent;
			}
			path.Reverse();
			return path;
		}

		private static int GetDistance(AstarGridNode gridNodeA, AstarGridNode gridNodeB)
		{
			var dstX = Math.Abs(gridNodeA.GridX - gridNodeB.GridX);
			var dstY = Math.Abs(gridNodeA.GridY - gridNodeB.GridY);
			return dstY + dstX;
		}
	}
}
