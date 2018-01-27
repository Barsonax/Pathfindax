using System;
using System.Collections.Generic;
using System.Diagnostics;
using Duality;
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
		private readonly RefMaxHeap<AstarNode> openSet;
		private readonly ContainsArray closedSet;
		private readonly List<DefinitionNode> _pathBuffer;

		public AStarAlgorithm(int amountOfNodes)
		{
			openSet = new RefMaxHeap<AstarNode>(amountOfNodes);
			closedSet = new ContainsArray(amountOfNodes);
			_pathBuffer = new List<DefinitionNode>();
		}

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
			return new NodePath(path, nodeNetwork.DefinitionNodeNetwork.Transformer);
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

		private DefinitionNode[] FindPath(AstarNode[] pathfindingNetwork, AstarNode startNode, AstarNode targetNode, float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			try
			{
				var pathSucces = false;
				if (startNode == targetNode)
				{
					return new[] { targetNode.DefinitionNode };
				}
				if (startNode.Clearance >= neededClearance && targetNode.Clearance >= neededClearance)
				{
					openSet.AssignArray(pathfindingNetwork);
					closedSet.Clear();
					openSet.Add(startNode.DefinitionNode.Index);
					var targetNodePosition = targetNode.DefinitionNode.Position;
					while (openSet.Count > 0)
					{
						var currentNode = openSet.RemoveFirst();
						closedSet.Occupy(currentNode.DefinitionNode.Index.Index);

						if (currentNode == targetNode)
						{
							Debug.WriteLine($"NodePath found");
							pathSucces = true;
							break;
						}

						var currentNodePosition = currentNode.DefinitionNode.Position;
						foreach (var connection in currentNode.DefinitionNode.Connections)
						{
							var toNode = NodePointer.Dereference(connection.To, pathfindingNetwork);
							if ((connection.CollisionCategory & collisionCategory) != 0 || closedSet.Contains(toNode.DefinitionNode.Index.Index)) continue;

							if (!(toNode.Clearance >= neededClearance)) continue;
							var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNodePosition, toNode.DefinitionNode.Position) * currentNode.DefinitionNode.MovementCostModifier;
							if (newMovementCostToNeighbour < toNode.GCost || !openSet.Contains(toNode, toNode.DefinitionNode.Index))
							{
								toNode.GCost = newMovementCostToNeighbour;
								toNode.HCost = GetDistance(toNode.DefinitionNode.Position, targetNodePosition);
								toNode.Parent = currentNode.DefinitionNode.Index;
								if (!openSet.Contains(toNode, toNode.DefinitionNode.Index))
									openSet.Add(toNode.DefinitionNode.Index);
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

		private DefinitionNode[] RetracePath(AstarNode[] pathfindingNetwork, AstarNode startGridNode, AstarNode endGridNode)
		{
			_pathBuffer.Clear();
			var currentNode = endGridNode;

			while (true)
			{
				_pathBuffer.Add(currentNode.DefinitionNode);
				if (currentNode == startGridNode) break;
				currentNode = NodePointer.Dereference(currentNode.Parent, pathfindingNetwork);
			}
			var pathArray = new DefinitionNode[_pathBuffer.Count];
			var reverseCount = _pathBuffer.Count - 1;
			for (int i = 0; i < pathArray.Length; i++)
			{
				pathArray[i] = _pathBuffer[reverseCount];
				reverseCount--;
			}
			return pathArray;
		}

		private static float GetDistance(in Vector2 position1, in Vector2 position2)
		{
			var dstX = Math.Abs(position1.X - position2.X);
			var dstY = Math.Abs(position1.Y - position2.Y);
			return dstY + dstX;
		}
	}
}