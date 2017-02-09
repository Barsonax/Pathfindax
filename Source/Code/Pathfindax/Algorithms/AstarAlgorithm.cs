using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Class that implements the A* algorithm to find paths
	/// </summary>
	public class AStarAlgorithm : IPathFindAlgorithm<INodeGrid<IAStarGridNode>>
	{
		/// <inheritdoc />
		public IList<INode> FindPath(INodeGrid<IAStarGridNode> nodeGrid, PathRequest pathRequest)
		{
			var startNode = nodeGrid.GetNode(pathRequest.PathStart);
			var endNode = nodeGrid.GetNode(pathRequest.PathEnd);
			return FindPath(nodeGrid, startNode, endNode, pathRequest.CollsionLayer, (byte)Math.Ceiling(pathRequest.Clearance));
		}

		private IList<INode> FindPath(INodeGrid<IAStarGridNode> nodeGrid, IAStarGridNode startGridNode, IAStarGridNode targetGridNode, PathfindaxCollisionCategory collisionCategory, byte neededClearance)
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
				if ((startGridNode.CollisionCategory & collisionCategory) == 0 && (targetGridNode.CollisionCategory & collisionCategory) == 0)
				{
					var openSet = new MinHeap<IAStarGridNode>(nodeGrid.NodeCount);
					var closedSet = new HashSet<IAStarGridNode>();
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
							if (connection == null || ((connection.CollisionCategory & collisionCategory) != 0) || (connection.To.CollisionCategory & collisionCategory) != 0 || closedSet.Contains(connection.To))
							{
								continue;
							}

							var toNodeClearance = -1;
							if (neededClearance > 1 && connection.To.Clearances != null)
								foreach (var gridClearance in connection.To.Clearances)
								{
									if ((gridClearance.CollisionCategory & collisionCategory) != 0)
									{
										if (gridClearance.Clearance < neededClearance)
										{
											toNodeClearance = gridClearance.Clearance;
											break;
										}
									}
								}
							if (toNodeClearance == -1 || toNodeClearance >= neededClearance)
							{
								var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNode, connection.To);
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

		private IList<INode> RetracePath(IAStarGridNode startGridNode, IAStarGridNode endGridNode)
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

		private static int GetDistance(IGridNodeBase gridNodeA, IGridNodeBase gridNodeB)
		{
			var dstX = Math.Abs(gridNodeA.GridX - gridNodeB.GridX);
			var dstY = Math.Abs(gridNodeA.GridY - gridNodeB.GridY);
			return dstY + dstX;
		}
	}
}
