using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Class that implements the A* algorithm to find paths
	/// </summary>
	public class AStarAlgorithm : IPathFindAlgorithm<IPathfindNodeNetwork<AstarNode>, NodePath>
	{
		public IEnumerable<int> OpenSet => _openSet;
		public IEnumerable<int> ClosedSet => _closedSet;

		private readonly IndexMinHeap<AstarNode> _openSet;
		private readonly LookupArray _closedSet;
		private readonly IDistanceHeuristic _heuristic;
		private readonly EuclideanDistance _costFunction = new EuclideanDistance();
		private readonly PathRetracer<AstarNode> _pathRetracer = new PathRetracer<AstarNode>((nodes, definitionNodes, i) => nodes[i].Parent);

		public AStarAlgorithm(int amountOfNodes, IDistanceHeuristic heuristic)
		{
			_openSet = new IndexMinHeap<AstarNode>(amountOfNodes);
			_closedSet = new LookupArray(amountOfNodes);
			_heuristic = heuristic;
		}

		public NodePath FindPath(IPathfindNodeNetwork<AstarNode> nodeNetwork, IPathRequest pathRequest, out bool succes)
		{
			if (pathRequest.PathStart == pathRequest.PathEnd)
			{
				succes = true;
				return NodePath.GetEmptyPath(nodeNetwork, pathRequest.PathStart);
			}
			var pathfindingNetwork = nodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);

			if (!(pathfindingNetwork[pathRequest.PathStart].Clearance >= pathRequest.AgentSize) || !(pathfindingNetwork[pathRequest.PathEnd].Clearance >= pathRequest.AgentSize))
			{
				succes = false;
				return NodePath.GetEmptyPath(nodeNetwork, pathRequest.PathStart);
			}

			Start(pathfindingNetwork, nodeNetwork.DefinitionNodeNetwork.NodeArray, pathRequest.PathStart, pathRequest.PathEnd, pathRequest.AgentSize, pathRequest.CollisionCategory);
			if (Step(-1))
			{
				var path = GetPath();

				succes = true;
				return new NodePath(nodeNetwork.DefinitionNodeNetwork.NodeArray, path, nodeNetwork.DefinitionNodeNetwork.Transformer);
			}

			succes = false;
			return NodePath.GetEmptyPath(nodeNetwork, pathRequest.PathStart);
		}

		private int _startNodeIndex;
		private int _targetNodeIndex;
		private float _neededClearance;
		private PathfindaxCollisionCategory _collisionCategory;
		private AstarNode[] _pathfindingNetwork;
		private DefinitionNode[] _definitionNodes;

		public void Start(AstarNode[] pathfindingNetwork, DefinitionNode[] definitionNodes, int startNodeIndex, int targetNodeIndex, float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			_startNodeIndex = startNodeIndex;
			_targetNodeIndex = targetNodeIndex;
			_neededClearance = neededClearance;
			_collisionCategory = collisionCategory;
			_pathfindingNetwork = pathfindingNetwork;
			_definitionNodes = definitionNodes;

			_openSet.AssignArray(pathfindingNetwork);
			_closedSet.Clear();
			_openSet.Add(startNodeIndex);
		}

		public bool Step(int stepsToRun = 1)
		{
			while (_openSet.Count > 0 && stepsToRun != 0)
			{
				if (stepsToRun > 0) stepsToRun--;
				var currentNodeIndex = _openSet.RemoveFirst();
				if (currentNodeIndex == _targetNodeIndex)
				{
					return true;
				}

				ref var currentNode = ref _pathfindingNetwork[currentNodeIndex];
				ref var currentDefinitionNode = ref _definitionNodes[currentNodeIndex];
				_closedSet.Occupy(currentNodeIndex);

				foreach (var connection in currentDefinitionNode.Connections)
				{
					ref var toNode = ref _pathfindingNetwork[connection.To];
					if ((connection.CollisionCategory & _collisionCategory) != 0 || _closedSet.Contains(connection.To) || toNode.Clearance < _neededClearance) continue;
					ref var toDefinitionNode = ref _definitionNodes[connection.To];
					var newMovementCostToNeighbour = currentNode.GCost + _costFunction.GetDistance(currentDefinitionNode.Position, toDefinitionNode.Position) * currentDefinitionNode.MovementCostModifier;
					if (newMovementCostToNeighbour < toNode.GCost || !_openSet.Contains(connection.To))
					{
						toNode.GCost = newMovementCostToNeighbour;
						toNode.Priority = newMovementCostToNeighbour + _heuristic.GetDistance(toDefinitionNode.Position, _definitionNodes[_targetNodeIndex].Position) * currentDefinitionNode.MovementCostModifier;
						toNode.Parent = currentNodeIndex;
						if (!_openSet.Contains(connection.To))
							_openSet.Add(connection.To);
						else
						{
							_openSet.Update(connection.To);
						}
					}
				}
			}
			return false;
		}

		public int[] GetPath()
		{
			return _pathRetracer.RetracePath(_pathfindingNetwork, _definitionNodes, _startNodeIndex, _targetNodeIndex);
		}
	}
}