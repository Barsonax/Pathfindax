using System;
using System.Diagnostics;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	public class PotentialFieldAlgorithm : IPathFindAlgorithm<DijkstraNodeGrid>
	{
		private readonly DijkstraAlgorithm _dijkstraAlgorithm = new DijkstraAlgorithm();
		private readonly ConcurrentCache<PathRequest, PotentialField> _potentialFieldCache;

		public PotentialFieldAlgorithm(int cacheSize)
		{
			if (cacheSize > 0)
				_potentialFieldCache = new ConcurrentCache<PathRequest, PotentialField>(cacheSize, new SingleSourcePathRequestComparer());
		}

		IPath IPathFindAlgorithm<DijkstraNodeGrid>.FindPath(DijkstraNodeGrid nodeNetwork, PathRequest pathRequest) => FindPath(nodeNetwork, pathRequest);

		public PotentialField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, PathRequest pathRequest)
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
			return new PotentialField(dijkstraNodeNetwork.DefinitionNodeGrid, targetNode, potentialNodes);
		}

		public PathRequest CreatePathRequest(IPathfinder<IDefinitionNodeNetwork> pathfinder, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			return _dijkstraAlgorithm.CreatePathRequest(pathfinder, x1, y1, x2, y2, collisionLayer);
		}
	}
}
