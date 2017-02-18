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
	public class AStarAlgorithm : IPathFindAlgorithm<INodeNetwork<AstarNode>>
	{
		/// <inheritdoc />
		public IList<INode> FindPath(INodeNetwork<AstarNode> nodeGrid, PathRequest pathRequest)
		{
			var startNode = nodeGrid.GetNode(pathRequest.PathStart);
			var endNode = nodeGrid.GetNode(pathRequest.PathEnd);
			return FindPath(nodeGrid, startNode, endNode, pathRequest.CollsionLayer);
		}

		private IList<INode> FindPath(INodeNetwork<AstarNode> nodeGrid, AstarNode startNode, AstarNode targetNode, PathfindaxCollisionCategory collisionCategory)
		{
			try
			{
				var sw = new Stopwatch();
				sw.Start();

				var pathSucces = false;
				if (startNode == targetNode)
				{
					return new List<INode> { targetNode };
				}
				if ((startNode.CollisionCategory & collisionCategory) != 0 && (targetNode.CollisionCategory & collisionCategory) != 0)
				{
					var openSet = new MinHeap<AstarNode>(nodeGrid.NodeCount);
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

						foreach (var connection in currentNode.Connections)
						{
							if (((connection.CollisionCategory & collisionCategory) != 0) || (connection.To.CollisionCategory & collisionCategory) != 0 || closedSet.Contains(connection.To))
							{
								continue;
							}
							var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNode, connection.To) + currentNode.MovementPenalty;
							if (newMovementCostToNeighbour < connection.To.GCost || !openSet.Contains(connection.To))
							{
								connection.To.GCost = newMovementCostToNeighbour;
								connection.To.HCost = GetDistance(connection.To, targetNode);
								connection.To.Parent = currentNode;
								neighbourUpdates++;
								if (!openSet.Contains(connection.To))
									openSet.Add(connection.To);
							}
						}
					}
				}
				if (pathSucces)
				{
					return RetracePath(startNode, targetNode);
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

		private IList<INode> RetracePath(AstarNode startGridNode, AstarNode endGridNode)
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

		private static float GetDistance(AstarNode gridNodeA, AstarNode gridNodeB)
		{
			var dstX = Math.Abs(gridNodeA.WorldPosition.X - gridNodeB.WorldPosition.X);
			var dstY = Math.Abs(gridNodeA.WorldPosition.Y - gridNodeB.WorldPosition.Y);
			return dstY + dstX;
		}
	}
}