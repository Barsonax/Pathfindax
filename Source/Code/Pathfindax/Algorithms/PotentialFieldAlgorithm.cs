using System;
using System.Diagnostics;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Algorithms
{
	public class PotentialFieldAlgorithm : IPathFindAlgorithm<DijkstraNodeGrid, PotentialField>
	{
		private readonly DijkstraAlgorithm _dijkstraAlgorithm = new DijkstraAlgorithm();
		private readonly ConcurrentCache<IPathRequest, PotentialField> _potentialFieldCache;

		public PotentialFieldAlgorithm(int cacheSize)
		{
			if (cacheSize > 0)
				_potentialFieldCache = new ConcurrentCache<IPathRequest, PotentialField>(cacheSize, new SingleSourcePathRequestComparer());
		}

		public PotentialField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, IPathRequest pathRequest)
		{
			try
			{
				if (_potentialFieldCache == null || !_potentialFieldCache.TryGetValue(pathRequest, out var potentialField))
				{
					var sw = Stopwatch.StartNew();
					var pathfindingNetwork = dijkstraNodeNetwork.GetCollisionLayerNetwork(pathRequest.CollisionCategory);
					var startNode = NodePointer.Dereference(pathRequest.PathStart.Index, pathfindingNetwork);
					var targetNode = NodePointer.Dereference(pathRequest.PathEnd.Index, pathfindingNetwork);
					_dijkstraAlgorithm.FindPath(pathfindingNetwork, targetNode, startNode, pathRequest);
					potentialField = FindPath(dijkstraNodeNetwork, pathfindingNetwork, targetNode);
					_potentialFieldCache?.Add(pathRequest, potentialField);
					Debug.WriteLine($"Potentialfield created in {sw.ElapsedMilliseconds} ms.");
				}
				return potentialField;
			}
			catch (Exception ex)
			{
				Debug.WriteLine(ex);
				Debugger.Break();
				return null;
			}
		}

		public static PotentialField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, DijkstraNode[] pathfindingNetwork, DijkstraNode targetNode)
		{
			var potentialNodes = new Array2D<float>(dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Width, dijkstraNodeNetwork.DefinitionNodeGrid.NodeGrid.Height);
			for (var i = 0; i < potentialNodes.Length; i++)
			{
				var dijkstraNode = pathfindingNetwork[i];
				if (dijkstraNode == targetNode) potentialNodes[i] = 0f;
				else if (dijkstraNode.GCost < 0.001f) potentialNodes[i] = DijkstraAlgorithm.ClearanceBlockedCost;
				else potentialNodes[i] = pathfindingNetwork[i].GCost;
			}
			return new PotentialField(dijkstraNodeNetwork.DefinitionNodeGrid.GridTransformer, targetNode.DefinitionNode.Index.Index, potentialNodes);
		}

		public PathRequest<PotentialField> CreatePathRequest(IPathfinder<PotentialField> pathfinder, IDefinitionNodeNetwork definitionNodes, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			DefinitionNode startNode;
			DefinitionNode endNode;
			switch (definitionNodes)
			{
				case IDefinitionNodeGrid definitionNodeGrid:
					var offset = -GridClearanceHelper.GridNodeOffset(agentSize, definitionNodeGrid.NodeSize);
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
	}
}
