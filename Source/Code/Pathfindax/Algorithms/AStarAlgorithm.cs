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
		public IList<ISourceNode> FindPath(INodeNetwork<AstarNode> nodeNetwork, PathRequest pathRequest)
		{
			var startNode = nodeNetwork[pathRequest.PathStart.ArrayIndex];
			var endNode = nodeNetwork[pathRequest.PathEnd.ArrayIndex];
			return FindPath(nodeNetwork, startNode, endNode, pathRequest.CollisionLayer);
		}

		private IList<ISourceNode> FindPath(INodeNetwork<AstarNode> nodeNetwork, AstarNode startNode, AstarNode targetNode, PathfindaxCollisionCategory collisionCategory)
		{
			try
			{
				var sw = new Stopwatch();
				sw.Start();

				var pathSucces = false;
				if (startNode == targetNode)
				{
					return new List<ISourceNode> { targetNode.SourceNode };
				}
				if ((startNode.CollisionCategory & collisionCategory) == 0 && (targetNode.CollisionCategory & collisionCategory) == 0)
				{
					var openSet = new MinHeap<AstarNode>(nodeNetwork.NodeCount);
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
							if ((connection.CollisionCategory & collisionCategory) != 0 || (connection.To.CollisionCategory & collisionCategory) != 0 || closedSet.Contains(connection.To))
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

		private IList<ISourceNode> RetracePath(AstarNode startGridNode, AstarNode endGridNode)
		{
			var path = new List<ISourceNode>();
			var currentNode = endGridNode;

			while (true)
			{
				path.Add(currentNode.SourceNode);
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