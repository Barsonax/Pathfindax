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
		private readonly IndexMaxHeap<AstarNode> _openSet;
		private readonly LookupArray _closedSet;
		private readonly List<int> _pathBuffer;

		public AStarAlgorithm(int amountOfNodes)
		{
			_openSet = new IndexMaxHeap<AstarNode>(amountOfNodes);
			_closedSet = new LookupArray(amountOfNodes);
			_pathBuffer = new List<int>();
		}

		public NodePath FindPath(IPathfindNodeNetwork<AstarNode> nodeNetwork, IPathRequest pathRequest, out bool succes)
		{
			var pathfindingNetwork = nodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);
			var path = FindPath(pathfindingNetwork, nodeNetwork.DefinitionNodeNetwork.NodeArray, pathRequest.PathStart, pathRequest.PathEnd, pathRequest.AgentSize, pathRequest.CollisionCategory);
			if (path == null)
			{
				succes = false;
				return new NodePath(nodeNetwork.DefinitionNodeNetwork.NodeArray, new[] { pathRequest.PathStart }, nodeNetwork.DefinitionNodeNetwork.Transformer);
			}
			succes = true;
			return new NodePath(nodeNetwork.DefinitionNodeNetwork.NodeArray, path, nodeNetwork.DefinitionNodeNetwork.Transformer);
		}

		public PathRequest<NodePath> CreatePathRequest(IPathfinder<NodePath> pathfinder, IDefinitionNodeNetwork definitionNodes, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			int startNode;
			int endNode;
			switch (definitionNodes)
			{
				case IDefinitionNodeGrid definitionNodeGrid:
					var offset = -GridClearanceHelper.GridNodeOffset(agentSize, definitionNodeGrid.Transformer.Scale);
					startNode = definitionNodeGrid.GetNodeIndex(x1 + offset.X, y1 + offset.Y);
					endNode = definitionNodeGrid.GetNodeIndex(x2 + offset.X, y2 + offset.Y);
					return PathRequest.Create(pathfinder, startNode, endNode, collisionLayer, agentSize);
				case IDefinitionNodeNetwork definitionNodeNetwork:
					startNode = definitionNodeNetwork.GetNodeIndex(x1, y1);
					endNode = definitionNodeNetwork.GetNodeIndex(x2, y2);
					return PathRequest.Create(pathfinder, startNode, endNode, collisionLayer, agentSize);
				default:
					throw new NotSupportedException($"{definitionNodes.GetType()} is not supported");
			}
		}

		private int[] FindPath(AstarNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, int startNodeIndex, int targetNodeIndex, float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			try
			{
				if (startNodeIndex == targetNodeIndex)
				{
					return new[] { targetNodeIndex };
				}
				var pathSucces = false;
				ref var startNode = ref pathfindingNetwork[startNodeIndex];
				ref var targetNode = ref pathfindingNetwork[targetNodeIndex];

				if (startNode.Clearance >= neededClearance && targetNode.Clearance >= neededClearance)
				{
					_openSet.AssignArray(pathfindingNetwork);
					_closedSet.Clear();
					_openSet.Add(startNodeIndex);
					var targetNodePosition = definitionNodes[targetNodeIndex].Position;
					while (_openSet.Count > 0)
					{
						var currentNodeIndex = _openSet.RemoveFirst();
						if (currentNodeIndex == targetNodeIndex)
						{
							Debug.WriteLine($"NodePath found");
							pathSucces = true;
							break;
						}

						ref var currentNode = ref pathfindingNetwork[currentNodeIndex];
						ref var currentDefinitionNode = ref definitionNodes[currentNodeIndex];
						_closedSet.Occupy(currentNodeIndex);

						var currentNodePosition = currentDefinitionNode.Position;
						foreach (var connection in currentDefinitionNode.Connections)
						{
							ref var toNode = ref pathfindingNetwork[connection.To];
							if ((connection.CollisionCategory & collisionCategory) != 0 || _closedSet.Contains(connection.To)) continue;

							if (!(toNode.Clearance >= neededClearance)) continue;
							ref var toDefinitionNode = ref definitionNodes[connection.To];
							var newMovementCostToNeighbour = currentNode.GCost + GetDistance(currentNodePosition, toDefinitionNode.Position) * currentDefinitionNode.MovementCostModifier;
							if (newMovementCostToNeighbour < toNode.GCost || !_openSet.Contains(connection.To))
							{
								toNode.GCost = newMovementCostToNeighbour;
								toNode.HCost = GetDistance(toDefinitionNode.Position, targetNodePosition);
								toNode.Parent = currentNodeIndex;
								if (!_openSet.Contains(connection.To))
									_openSet.Add(connection.To);
							}
						}
					}
				}
				if (pathSucces)
				{
					return RetracePath(pathfindingNetwork, startNodeIndex, targetNodeIndex);
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

		private int[] RetracePath(AstarNode[] pathfindingNetwork, int startIndex, int targetIndex)
		{
			_pathBuffer.Clear();
			var currentNode = targetIndex;

			while (true)
			{
				_pathBuffer.Add(currentNode);
				if (currentNode == startIndex) break;
				currentNode = pathfindingNetwork[currentNode].Parent;
			}
			var pathArray = new int[_pathBuffer.Count];
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