using System;
using System.Collections.Generic;
using System.Diagnostics;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Algorithms
{
	public class FlowFieldAlgorithm : IPathFindAlgorithm<DijkstraNodeGrid>
	{
		public IPath FindPath(DijkstraNodeGrid dijkstraNodeNetwork, PathRequest pathRequest)
		{
			var pathfindingNetwork = dijkstraNodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);
			var startNode = NodePointer.Dereference(pathRequest.PathStart.Index, pathfindingNetwork);
			var endNode = NodePointer.Dereference(pathRequest.PathEnd.Index, pathfindingNetwork);
			return FindPath(dijkstraNodeNetwork, pathfindingNetwork, endNode, startNode, pathRequest);
		}

		public PathRequest CreatePathRequest(IPathfinder<IDefinitionNodeNetwork> pathfinder, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			switch (pathfinder.SourceNodeNetwork)
			{
				case IDefinitionNodeGrid definitionNodeGrid:
					var startNode = definitionNodeGrid.GetNode(x1, y1);
					var endNode = definitionNodeGrid.GetNode(x2, y2);
					return new PathRequest(pathfinder, startNode, endNode, collisionLayer, agentSize);
				default:
					throw new NotSupportedException($"{pathfinder.SourceNodeNetwork.GetType()} is not supported");
			}
		}

		private static IPath FindPath(DijkstraNodeGrid dijkstraNodeNetwork, DijkstraNode[] pathfindingNetwork, DijkstraNode targetNode, DijkstraNode startNode, PathRequest pathRequest)
		{
			try
			{
				var sw = new Stopwatch();
				sw.Start();

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

						if (currentNode == startNode)
						{
							pathSucces = true;
						}

						foreach (var connection in currentNode.DefinitionNode.Connections)
						{
							var toNode = NodePointer.Dereference(connection.To, pathfindingNetwork);
							if ((connection.CollisionCategory & pathRequest.CollisionCategory) != 0 || closedSet.Contains(toNode)) continue;

							var extraCost = 0f;
							if (toNode.Clearance < pathRequest.AgentSize) extraCost = 100000f;
							var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNode.DefinitionNode, toNode.DefinitionNode) * currentNode.DefinitionNode.MovementCostModifier + extraCost;
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

				if (pathSucces)
				{
					var flowNodes = new NodePointer[dijkstraNodeNetwork.DefinitionNodeGrid.NodeCount];
					for (var i = 0; i < flowNodes.Length; i++)
					{
						var from = pathfindingNetwork[i];
						if (from == targetNode) flowNodes[i] = from.DefinitionNode.Index;
						else if (from.Parent.Index != -1)
						{
							var to = NodePointer.Dereference(from.Parent, dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Array);
							flowNodes[i] = to.Index;
						}
						else
						{
							flowNodes[i] = NodePointer.NullPointer;
						}
					}
					var flowField = new FlowField(dijkstraNodeNetwork.DefinitionNodeGrid, pathfindingNetwork, targetNode, flowNodes);
					if (flowField.CanRetracePath(startNode, pathRequest.AgentSize))
					{
						sw.Stop();
						Debug.WriteLine($"Flowfield created in {sw.ElapsedMilliseconds} ms.");
						return flowField;
					}
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

		private static float GetDistance(DefinitionNode sourceNodeA, DefinitionNode sourceNodeB)
		{
			var dstX = Math.Abs(sourceNodeA.Position.X - sourceNodeB.Position.X);
			var dstY = Math.Abs(sourceNodeA.Position.Y - sourceNodeB.Position.Y);
			return dstY + dstX;
		}
	}
}
