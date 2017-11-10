using System;
using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Algorithms
{
	public class DijkstraAlgorithm : IPathFindAlgorithm<DijkstraNodeGrid>
	{
		public IPath FindPath(DijkstraNodeGrid dijkstraNodeNetwork, PathRequest pathRequest)
		{
			var sw = new Stopwatch();
			sw.Start();
			var pathfindingNetwork = dijkstraNodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);
			var startNode = NodePointer.Dereference(pathRequest.PathStart.Index, pathfindingNetwork);
			var endNode = NodePointer.Dereference(pathRequest.PathEnd.Index, pathfindingNetwork);
			try
			{
				var pathSucces = FindPath(pathfindingNetwork, endNode, startNode, pathRequest);
				if (pathSucces)
				{
					var path = RetracePath(pathfindingNetwork, startNode, endNode);
					var offset = GridClearanceHelper.GridNodeOffset(pathRequest.AgentSize, dijkstraNodeNetwork.DefinitionNodeGrid.NodeSize);
					Debug.WriteLine($"Path found in {sw.ElapsedMilliseconds} ms.");
					return new CompletedPath(path.ToArray(), offset);
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

		public bool FindPath(DijkstraNode[] pathfindingNetwork, DijkstraNode targetNode, DijkstraNode startNode, PathRequest pathRequest)
		{
			var pathSucces = false;
			if (targetNode.Clearance >= pathRequest.AgentSize && startNode.Clearance >= pathRequest.AgentSize)
			{
				var openSet = new MinHeap<DijkstraNode>(pathfindingNetwork.Length);
				var closedSet = new HashSet<DijkstraNode>();

				openSet.Add(targetNode);
				while (openSet.Count > 0)
				{
					var currentNode = openSet.RemoveFirst();
					closedSet.Add(currentNode);

					if (currentNode == startNode) pathSucces = true;

					foreach (var connection in currentNode.DefinitionNode.Connections)
					{
						var toNode = NodePointer.Dereference(connection.To, pathfindingNetwork);
						if ((connection.CollisionCategory & pathRequest.CollisionCategory) != 0 || closedSet.Contains(toNode)) continue;

						var newMovementCostToNeighbour = toNode.Clearance < pathRequest.AgentSize ?
							100000000f :
							currentNode.GCost + GetDistance(currentNode.DefinitionNode, toNode.DefinitionNode) * currentNode.DefinitionNode.MovementCostModifier;
						if (newMovementCostToNeighbour < toNode.GCost || !openSet.Contains(toNode))
						{
							toNode.GCost = newMovementCostToNeighbour;
							toNode.Parent = currentNode.DefinitionNode.Index;
							if (!openSet.Contains(toNode))
								openSet.Add(toNode);
						}
					}
				}
			}
			return pathSucces;
		}

		public PathRequest CreatePathRequest(IPathfinder<IDefinitionNodeNetwork> pathfinder, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			DefinitionNode startNode;
			DefinitionNode endNode;
			switch (pathfinder.SourceNodeNetwork)
			{
				case IDefinitionNodeGrid definitionNodeGrid:
					var offset = -GridClearanceHelper.GridNodeOffset(agentSize, definitionNodeGrid.NodeSize);
					startNode = definitionNodeGrid.GetNode(x1 + offset.X, y1 + offset.Y);
					endNode = definitionNodeGrid.GetNode(x2 + offset.X, y2 + offset.Y);
					return new PathRequest(pathfinder, startNode, endNode, collisionLayer, agentSize);
				case IDefinitionNodeNetwork definitionNodeNetwork:
					startNode = definitionNodeNetwork.GetNode(x1, y1);
					endNode = definitionNodeNetwork.GetNode(x2, y2);
					return new PathRequest(pathfinder, startNode, endNode, collisionLayer, agentSize);
				default:
					throw new NotSupportedException($"{pathfinder.SourceNodeNetwork.GetType()} is not supported");
			}
		}

		private static List<DefinitionNode> RetracePath(DijkstraNode[] pathfindingNetwork, DijkstraNode startGridNode, DijkstraNode endGridNode)
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
