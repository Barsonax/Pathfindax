using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Algorithm for potential and flow fields. Not to be used directly except for testing purposes.
	/// </summary>
	public class DijkstraAlgorithm : IPathFindAlgorithm<IPathfindNodeNetwork<DijkstraNode>, WaypointPath>
	{
		public IEnumerable<int> OpenSet => _openSet;
		public IEnumerable<int> ClosedSet => _closedSet;
		public int StartNodeIndex { get; private set; } = -1;
		public int TargetNodeIndex { get; private set; } = -1;

		private float _neededClearance;
		private PathfindaxCollisionCategory _collisionCategory;
		private DijkstraNode[] _pathfindingNetwork;
		private DefinitionNode[] _definitionNodes;

		private readonly IndexMinHeap<DijkstraNode> _openSet;
		private readonly LookupArray _closedSet;
		private readonly EuclideanDistance _costFunction = new EuclideanDistance();
		private readonly PathRetracer<DijkstraNode> _pathRetracer = new PathRetracer<DijkstraNode>(GetParent);

		public DijkstraAlgorithm(int amountOfNodes)
		{
			_openSet = new IndexMinHeap<DijkstraNode>(amountOfNodes);
			_closedSet = new LookupArray(amountOfNodes);
		}

		public WaypointPath FindPath(IPathfindNodeNetwork<DijkstraNode> nodeNetwork, IPathRequest pathRequest, out bool succes)
		{
			if (pathRequest.PathStart == pathRequest.PathEnd)
			{
				succes = true;
				return WaypointPath.GetEmptyPath(nodeNetwork, pathRequest.PathStart);
			}
			var pathfindingNetwork = nodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);

			if (!(pathfindingNetwork[pathRequest.PathStart].Clearance >= pathRequest.AgentSize) || !(pathfindingNetwork[pathRequest.PathEnd].Clearance >= pathRequest.AgentSize))
			{
				succes = false;
				return WaypointPath.GetEmptyPath(nodeNetwork, pathRequest.PathStart);
			}

			Start(pathfindingNetwork, nodeNetwork.DefinitionNodeNetwork.NodeArray, pathRequest.PathStart, pathRequest.PathEnd, pathRequest.AgentSize, pathRequest.CollisionCategory);
			if (Step(-1))
			{
				var path = _pathRetracer.RetracePath(pathfindingNetwork, nodeNetwork.DefinitionNodeNetwork.NodeArray, pathRequest.PathStart, pathRequest.PathEnd);

				succes = true;
				return new WaypointPath(nodeNetwork.DefinitionNodeNetwork.NodeArray, path, nodeNetwork.DefinitionNodeNetwork.Transformer);
			}

			succes = false;
			return WaypointPath.GetEmptyPath(nodeNetwork, pathRequest.PathStart);
		}

		public void Start(DijkstraNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, int startNodeIndex, int targetNodeIndex, float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			ResetNetwork(pathfindingNetwork);
			StartNodeIndex = startNodeIndex;
			TargetNodeIndex = targetNodeIndex;
			_neededClearance = neededClearance;
			_collisionCategory = collisionCategory;
			_pathfindingNetwork = pathfindingNetwork;
			_definitionNodes = definitionNodes;

			_openSet.AssignArray(pathfindingNetwork);
			_closedSet.Clear();
			_openSet.Add(startNodeIndex);
			pathfindingNetwork[startNodeIndex].Priority = 0f;
		}

		public bool Step(int stepsToRun = 1)
		{
			var succes = false;
			while (_openSet.Count > 0 && stepsToRun != 0)
			{
				if (stepsToRun > 0) stepsToRun--;
				var currentNodeIndex = _openSet.RemoveFirst();
				if (currentNodeIndex == TargetNodeIndex)
				{
					succes = true;
				}
				ref var currentNode = ref _pathfindingNetwork[currentNodeIndex];
				ref var currentDefinitionNode = ref _definitionNodes[currentNodeIndex];
				_closedSet.Occupy(currentNodeIndex);

				foreach (var connection in currentDefinitionNode.Connections)
				{
					if ((connection.CollisionCategory & _collisionCategory) != 0 || _closedSet.Contains(connection.To)) continue;
					ref var toNode = ref _pathfindingNetwork[connection.To];
					if (toNode.Clearance < _neededClearance)
					{
						toNode.Priority = float.NaN;
					}
					else
					{
						ref var toDefinitionNode = ref _definitionNodes[connection.To];
						var newMovementCostToNeighbour = currentNode.Priority + _costFunction.GetDistance(currentDefinitionNode.Position, toDefinitionNode.Position) * currentDefinitionNode.MovementCostModifier;
						if (newMovementCostToNeighbour < toNode.Priority || !_openSet.Contains(connection.To))
						{
							toNode.Priority = newMovementCostToNeighbour;
							if (!_openSet.Contains(connection.To))
								_openSet.Add(connection.To);
							else
							{
								_openSet.Update(connection.To);
							}
						}
					}
				}
			}
			return succes;
		}

		private void ResetNetwork(DijkstraNode[] pathfindingNetwork)
		{
			for (var i = 0; i < pathfindingNetwork.Length; i++)
			{
				pathfindingNetwork[i].Priority = float.NaN;
			}
		}

		private static int GetParent(DijkstraNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, int nodeIndex)
		{
			var currentParent = -1;
			var currentPriority = float.MaxValue;
			foreach (var connection in definitionNodes[nodeIndex].Connections)
			{
				ref var node = ref pathfindingNetwork[connection.To];
				if (node.Priority < currentPriority)
				{
					currentParent = connection.To;
					currentPriority = node.Priority;
				}
			}
			return currentParent;
		}
	}
}
