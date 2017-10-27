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
		public IList<ISourceNode> FindPath(INodeGrid<AstarGridNode> nodeGrid, PathRequest pathRequest)
		{
			var startNode = nodeGrid[pathRequest.PathStart.ArrayIndex];
			var endNode = nodeGrid[pathRequest.PathEnd.ArrayIndex];
			return FindPath(nodeGrid, startNode, endNode, pathRequest.CollisionLayer, pathRequest.AgentSize);
		}

		private static IList<ISourceNode> FindPath(INodeGrid<AstarGridNode> nodeGrid, AstarGridNode startGridNode, AstarGridNode targetGridNode, PathfindaxCollisionCategory collisionCategory, byte neededClearance)
		{
			try
			{
				var sw = new Stopwatch();
				sw.Start();

				var pathSucces = false;
				if (startGridNode == targetGridNode)
				{
					return new List<ISourceNode> { targetGridNode.SourceGridNode };
				}
				if (startGridNode.SourceGridNode.GetTrueClearance(collisionCategory) >= neededClearance && targetGridNode.SourceGridNode.GetTrueClearance(collisionCategory) >= neededClearance)
				{
					var openSet = new MinHeap<AstarGridNode>(nodeGrid.NodeArray.Length);
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

						foreach (var connection in currentNode.SourceGridNode.Connections)
						{
							var toNode = nodeGrid.NodeArray[connection.To];
							if ((connection.CollisionCategory & collisionCategory) != 0 || closedSet.Contains(toNode))
							{
								continue;
							}

							if (toNode.SourceGridNode.GetTrueClearance(collisionCategory) >= neededClearance)
							{
								var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNode.SourceGridNode, toNode.SourceGridNode) + currentNode.SourceGridNode.MovementPenalty;
								if (newMovementCostToNeighbour < toNode.GCost || !openSet.Contains(toNode))
								{
									toNode.GCost = newMovementCostToNeighbour;
									toNode.HCost = GetDistance(toNode.SourceGridNode, targetGridNode.SourceGridNode);
									toNode.Parent = currentNode.SourceGridNode.ArrayIndex;
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
					return RetracePath(nodeGrid ,startGridNode, targetGridNode);
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

		private static IList<ISourceNode> RetracePath(INodeGrid<AstarGridNode> nodeGrid, AstarGridNode startGridNode, AstarGridNode endGridNode)
		{
			var path = new List<ISourceNode>();
			var currentNode = endGridNode;

			while (true)
			{
				path.Add(currentNode.SourceGridNode);
				if (currentNode == startGridNode) break;
				currentNode = nodeGrid.NodeArray[currentNode.Parent];
			}
			path.Reverse();
			return path;
		}

		private static int GetDistance(ISourceGridNode gridNodeA, ISourceGridNode gridNodeB)
		{
			var dstX = Math.Abs(gridNodeA.GridX - gridNodeB.GridX);
			var dstY = Math.Abs(gridNodeA.GridY - gridNodeB.GridY);
			return dstY + dstX;
		}
	}
}
