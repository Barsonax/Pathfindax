using System;
using System.Collections.Generic;
using System.Diagnostics;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Grid;

namespace Pathfindax.Algorithms
{
	public class AStarAlgorithm : IPathFindAlgorithm<IAStarNode>
	{
		private readonly INodeGrid<IAStarNode> _nodeGrid;

		public AStarAlgorithm(INodeGrid<IAStarNode> nodeGrid)
		{
			_nodeGrid = nodeGrid;
		}

		public IList<INode> FindPath(Vector2 pathStart, Vector2 pathEnd)
		{
			var startNode = _nodeGrid.GetNode(pathStart);
			var endNode = _nodeGrid.GetNode(pathEnd);
			return FindPath(startNode, endNode);
		}

		public IList<INode> FindPath(IAStarNode startNode, IAStarNode targetNode)
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
				if (startNode.Walkable && targetNode.Walkable)
				{
					var openSet = new MinHeap<IAStarNode>(_nodeGrid.MaxSize);
					var closedSet = new HashSet<IAStarNode>();
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

						foreach (var neighbour in _nodeGrid.GetNeighbours(currentNode))
						{
							if (!neighbour.Walkable || closedSet.Contains(neighbour))
							{
								continue;
							}

							var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNode, neighbour);
							if (newMovementCostToNeighbour < neighbour.GCost || !openSet.Contains(neighbour))
							{
								neighbour.GCost = newMovementCostToNeighbour;
								neighbour.HCost = GetDistance(neighbour, targetNode);
								neighbour.Parent = currentNode;
								neighbourUpdates++;
								if (!openSet.Contains(neighbour))
									openSet.Add(neighbour);
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

		private IList<INode> RetracePath(IAStarNode startNode, IAStarNode endNode)
		{
            var path = new List<INode>();
			var currentNode = endNode;

			while (true)
			{
				path.Add(currentNode);
				if (currentNode == startNode) break;
				currentNode = currentNode.Parent;
			}
		    path.Reverse();
		    return path;
		}

		private static int GetDistance(INode nodeA, INode nodeB)
		{
			var dstX = Math.Abs(nodeA.GridX - nodeB.GridX);
			var dstY = Math.Abs(nodeA.GridY - nodeB.GridY);
			return dstY + dstX;
		}
	}
}
