using System;
using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Class that implements the A* algorithm to find paths
	/// </summary>
	public class AStarAlgorithm : IPathFindAlgorithm<IPathfindNodeNetwork<AstarNode>, NodePath>
	{
		public NodePath FindPath(IPathfindNodeNetwork<AstarNode> nodeNetwork, IPathRequest pathRequest, out bool succes)
		{
			var pathfindingNetwork = nodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);
			var startNode = NodePointer.Dereference(pathRequest.PathStart.Index, pathfindingNetwork);
			var endNode = NodePointer.Dereference(pathRequest.PathEnd.Index, pathfindingNetwork);
			var path = FindPath(pathfindingNetwork, startNode, endNode, pathRequest.AgentSize, pathRequest.CollisionCategory);
			if (path == null)
			{
				succes = false;
				return new NodePath(new[] { startNode.DefinitionNode }, nodeNetwork.DefinitionNodeNetwork.Transformer);
			}
			succes = true;
			switch (nodeNetwork.DefinitionNodeNetwork)
			{
				case IDefinitionNodeGrid definitionNodeGrid:
					return new NodePath(path.ToArray(), definitionNodeGrid.Transformer);
				case IDefinitionNodeNetwork definitionNodeNetwork:
					return new NodePath(path.ToArray(), definitionNodeNetwork.Transformer);
				default:
					throw new NotSupportedException($"{nodeNetwork.DefinitionNodeNetwork.GetType()} is not supported");
			}
		}

		public PathRequest<NodePath> CreatePathRequest(IPathfinder<NodePath> pathfinder, IDefinitionNodeNetwork definitionNodes, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			DefinitionNode startNode;
			DefinitionNode endNode;
			switch (definitionNodes)
			{
				case IDefinitionNodeGrid definitionNodeGrid:
					var offset = -GridClearanceHelper.GridNodeOffset(agentSize, definitionNodeGrid.Transformer.Scale);
					startNode = definitionNodeGrid.GetNode(x1 + offset.X, y1 + offset.Y);
					endNode = definitionNodeGrid.GetNode(x2 + offset.X, y2 + offset.Y);
					return PathRequest.Create(pathfinder, startNode, endNode, collisionLayer, agentSize);
				case IDefinitionNodeNetwork definitionNodeNetwork:
					startNode = definitionNodeNetwork.GetNode(x1, y1);
					endNode = definitionNodeNetwork.GetNode(x2, y2);
					return PathRequest.Create(pathfinder, startNode, endNode, collisionLayer, agentSize);
				default:
					throw new NotSupportedException($"{definitionNodes.GetType()} is not supported");
			}
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
				if (startNode.Clearance >= neededClearance && targetNode.Clearance >= neededClearance)
				{
					var openSet = new MaxHeap<AstarNode>(pathfindingNetwork.Length);
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
							Debug.WriteLine($"NodePath found in {sw.ElapsedMilliseconds} ms. Itterations: {itterations} Neighbourupdates: {neighbourUpdates}");
							pathSucces = true;
							break;
						}

						foreach (var connection in currentNode.DefinitionNode.Connections)
						{
							var toNode = NodePointer.Dereference(connection.To, pathfindingNetwork);
							if ((connection.CollisionCategory & collisionCategory) != 0 || closedSet.Contains(toNode)) continue;

							if (toNode.Clearance >= neededClearance)
							{
								var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNode.DefinitionNode, toNode.DefinitionNode) * currentNode.DefinitionNode.MovementCostModifier;
								if (newMovementCostToNeighbour < toNode.GCost || !openSet.Contains(toNode))
								{
									toNode.GCost = newMovementCostToNeighbour;
									toNode.HCost = GetDistance(toNode.DefinitionNode, targetNode.DefinitionNode);
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