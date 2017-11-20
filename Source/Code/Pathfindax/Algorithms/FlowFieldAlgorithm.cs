using System;
using System.Diagnostics;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Algorithms
{
	public class FlowFieldAlgorithm : IPathFindAlgorithm<DijkstraNodeGrid, FlowField>
	{
		private readonly PotentialFieldAlgorithm _potentialFieldAlgorithm = new PotentialFieldAlgorithm(0);
		private readonly ConcurrentCache<IPathRequest, FlowField> _flowFieldCache;

		public FlowFieldAlgorithm(int cacheSize)
		{
			if (cacheSize > 0)
				_flowFieldCache = new ConcurrentCache<IPathRequest, FlowField>(cacheSize, new SingleSourcePathRequestComparer());
		}

		public FlowField FindPath(DijkstraNodeGrid dijkstraNodeNetwork, IPathRequest pathRequest)
		{
			try
			{
				if (_flowFieldCache == null || !_flowFieldCache.TryGetValue(pathRequest, out var flowField))
				{
					var potentialField = _potentialFieldAlgorithm.FindPath(dijkstraNodeNetwork, pathRequest);
					var sw = Stopwatch.StartNew();
					flowField = new FlowField(potentialField);
					Debug.WriteLine($"Flowfield created in {sw.ElapsedMilliseconds} ms.");
					_flowFieldCache?.Add(pathRequest, flowField);
				}
				return flowField;
			}
			catch (Exception ex)
			{
				Debug.WriteLine(ex);
				Debugger.Break();
				return null;
			}
		}

		public PathRequest<FlowField> CreatePathRequest(IPathfinder<FlowField> pathfinder, IDefinitionNodeNetwork definitionNodes, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
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
