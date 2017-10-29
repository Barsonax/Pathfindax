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
			var startNode = NodePointer.Dereference(pathRequest.PathStart.Index, nodeNetwork);
			var endNode = NodePointer.Dereference(pathRequest.PathEnd.Index, nodeNetwork);
			return FindPath(nodeNetwork, startNode, endNode, pathRequest.CollisionLayer);
		}

		private static IList<ISourceNode> FindPath(INodeNetwork<AstarNode> nodeNetwork, AstarNode startNode, AstarNode targetNode, PathfindaxCollisionCategory collisionCategory)
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
				if ((startNode.SourceNode.CollisionCategory & collisionCategory) == 0 && (targetNode.SourceNode.CollisionCategory & collisionCategory) == 0)
				{
					var openSet = new MinHeap<AstarNode>(nodeNetwork.SourceNodeNetwork.NodeCount);
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

						foreach (var connection in currentNode.SourceNode.Connections)
						{
							var toNode = NodePointer.Dereference(connection.To, nodeNetwork);
							if ((connection.CollisionCategory & collisionCategory) != 0 || (toNode.SourceNode.CollisionCategory & collisionCategory) != 0 || closedSet.Contains(toNode))
							{
								continue;
							}
							var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNode.SourceNode, toNode.SourceNode) + currentNode.SourceNode.MovementPenalty;
							if (newMovementCostToNeighbour < toNode.GCost || !openSet.Contains(toNode))
							{
								toNode.GCost = newMovementCostToNeighbour;
								toNode.HCost = GetDistance(toNode.SourceNode, targetNode.SourceNode);
								toNode.Parent = currentNode.SourceNode.Index;
								neighbourUpdates++;
								if (!openSet.Contains(toNode))
									openSet.Add(toNode);
							}
						}
					}
				}
				if (pathSucces)
				{
					return RetracePath(nodeNetwork, startNode, targetNode);
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

		private static IList<ISourceNode> RetracePath(INodeNetwork<AstarNode> nodeNetwork, AstarNode startGridNode, AstarNode endGridNode)
		{
			var path = new List<ISourceNode>();
			var currentNode = endGridNode;

			while (true)
			{
				path.Add(currentNode.SourceNode);
				if (currentNode == startGridNode) break;
				currentNode = NodePointer.Dereference(currentNode.Parent, nodeNetwork);
			}
			path.Reverse();
			return path;
		}

		private static float GetDistance(SourceNode sourceNodeA, SourceNode sourceNodeB)
		{
			var dstX = Math.Abs(sourceNodeA.WorldPosition.X - sourceNodeB.WorldPosition.X);
			var dstY = Math.Abs(sourceNodeA.WorldPosition.Y - sourceNodeB.WorldPosition.Y);
			return dstY + dstX;
		}
	}
}