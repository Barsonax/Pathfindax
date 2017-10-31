using System;
using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Class that implements the A* algorithm for grids to find paths
	/// </summary>
	public class AStarGridAlgorithm : IPathFindAlgorithm<AstarNodeGrid>
	{
		public List<DefinitionNode> FindPath(AstarNodeGrid nodeGrid, PathRequest pathRequest)
		{
			var pathfindingGrid = nodeGrid.GetPathfindingGrid(pathRequest.CollisionLayer);
			var startNode = NodePointer.Dereference(pathRequest.PathStart.Index, pathfindingGrid);
			var endNode = NodePointer.Dereference(pathRequest.PathEnd.Index, pathfindingGrid);
			return FindPath(pathfindingGrid, startNode, endNode, pathRequest.AgentSize);
		}

		private static List<DefinitionNode> FindPath(Array2D<AstarNode> pathfindingGrid, AstarNode startGridNode, AstarNode targetGridNode, byte neededClearance)
		{
			//try
			//{
				var sw = new Stopwatch();
				sw.Start();

				var pathSucces = false;
				if (startGridNode == targetGridNode)
				{
					return new List<DefinitionNode> { targetGridNode.SourceNode.DefinitionNode };
				}
				if (startGridNode.SourceNode.Clearance >= neededClearance && targetGridNode.SourceNode.Clearance >= neededClearance)
				{
					var openSet = new MinHeap<AstarNode>(pathfindingGrid.Length);
					var closedSet = new HashSet<AstarNode>();
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

						foreach (var connection in currentNode.SourceNode.Connections)
						{
							var toNode = NodePointer.Dereference(connection, pathfindingGrid);
							if (closedSet.Contains(toNode)) continue;

							if (toNode.SourceNode.Clearance >= neededClearance)
							{
								var newMovementCostToNeighbour = currentNode.GCost + GetDistance(pathfindingGrid.Width, currentNode.SourceNode, toNode.SourceNode) + currentNode.SourceNode.DefinitionNode.MovementPenalty;
								if (newMovementCostToNeighbour < toNode.GCost || !openSet.Contains(toNode))
								{
									toNode.GCost = newMovementCostToNeighbour;
									toNode.HCost = GetDistance(pathfindingGrid.Width, toNode.SourceNode, targetGridNode.SourceNode);
									toNode.Parent = currentNode.SourceNode.DefinitionNode.Index;
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
					return RetracePath(pathfindingGrid, startGridNode, targetGridNode);
				}
				Debug.WriteLine("Did not find a path :(");
				return null;
			//}
			//catch (Exception ex)
			//{
			//	Debug.WriteLine(ex);
			//	return null;
			//}
		}

		private static List<DefinitionNode> RetracePath(Array2D<AstarNode> pathfindingGrid, AstarNode startGridNode, AstarNode endGridNode)
		{
			var path = new List<DefinitionNode>();
			var currentNode = endGridNode;

			while (true)
			{
				path.Add(currentNode.SourceNode.DefinitionNode);
				if (currentNode == startGridNode) break;
				currentNode = NodePointer.Dereference(currentNode.Parent, pathfindingGrid);
			}
			path.Reverse();
			return path;
		}

		private static int GetDistance(int width, SourceNode gridNodeA, SourceNode gridNodeB)
		{
			var gridNodeACoords = GridMath.TransformToGridCoords(width, gridNodeA.DefinitionNode.Index.Index);
			var gridNodeBCoords = GridMath.TransformToGridCoords(width, gridNodeB.DefinitionNode.Index.Index);
			var dstX = Math.Abs(gridNodeACoords.X - gridNodeBCoords.X);
			var dstY = Math.Abs(gridNodeACoords.Y - gridNodeBCoords.Y);
			return dstY + dstX;
		}
	}
}
