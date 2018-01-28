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
		private readonly IndexMaxHeap<AstarNode> openSet;
		private readonly LookupArray closedSet;
		private readonly List<DefinitionNode> _pathBuffer;

		public AStarAlgorithm(int amountOfNodes)
		{
			openSet = new IndexMaxHeap<AstarNode>(amountOfNodes);
			closedSet = new LookupArray(amountOfNodes);
			_pathBuffer = new List<DefinitionNode>();
		}

		public NodePath FindPath(IPathfindNodeNetwork<AstarNode> nodeNetwork, IPathRequest pathRequest, out bool succes)
		{
			var pathfindingNetwork = nodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);
			var path = FindPath(pathfindingNetwork, pathRequest.PathStart.Index, pathRequest.PathEnd.Index, pathRequest.AgentSize, pathRequest.CollisionCategory);
			if (path == null)
			{
				succes = false;
				return new NodePath(new[] { pathfindingNetwork[pathRequest.PathStart.Index].DefinitionNode }, nodeNetwork.DefinitionNodeNetwork.Transformer);
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

		private DefinitionNode[] FindPath(AstarNode[] pathfindingNetwork, int startNodeIndex, int targetNodeIndex, float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			try
			{
				if (startNodeIndex == targetNodeIndex)
				{
					return new[] { ArrayIndex.Dereference(targetNodeIndex, pathfindingNetwork).DefinitionNode };
				}
				var pathSucces = false;
				var startNode = ArrayIndex.Dereference(startNodeIndex, pathfindingNetwork);
				var targetNode = ArrayIndex.Dereference(targetNodeIndex, pathfindingNetwork);
				if (startNode.Clearance >= neededClearance && targetNode.Clearance >= neededClearance)
				{
					openSet.AssignArray(pathfindingNetwork);
					closedSet.Clear();
					openSet.Add(startNodeIndex);
					var targetNodePosition = targetNode.DefinitionNode.Position;
					while (openSet.Count > 0)
					{
						var currentNodeIndex = openSet.RemoveFirst();
						if (currentNodeIndex == targetNodeIndex)
						{
							Debug.WriteLine($"NodePath found");
							pathSucces = true;
							break;
						}

						var currentNode = ArrayIndex.Dereference(currentNodeIndex, pathfindingNetwork);
						closedSet.Occupy(currentNodeIndex);

						var currentNodePosition = currentNode.DefinitionNode.Position;
						foreach (var connection in currentNode.DefinitionNode.Connections)
						{
							var toNode = ArrayIndex.Dereference(connection.To, pathfindingNetwork);
							if ((connection.CollisionCategory & collisionCategory) != 0 || closedSet.Contains(connection.To)) continue;

							if (!(toNode.Clearance >= neededClearance)) continue;
							var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNodePosition, toNode.DefinitionNode.Position) * currentNode.DefinitionNode.MovementCostModifier;
							if (newMovementCostToNeighbour < toNode.GCost || !openSet.Contains(connection.To))
							{
								toNode.GCost = newMovementCostToNeighbour;
								toNode.HCost = GetDistance(toNode.DefinitionNode.Position, targetNodePosition);
								toNode.Parent = currentNodeIndex;
								if (!openSet.Contains(connection.To))
									openSet.Add(connection.To);
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
				currentNode = ArrayIndex.Dereference(currentNode.Parent, pathfindingNetwork);
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