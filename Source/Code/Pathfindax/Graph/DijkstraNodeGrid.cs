﻿using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Pathfindax.Graph
{
	public class DijkstraNodeGrid : IPathfindNodeNetwork<DijkstraNode>
	{
		IDefinitionNodeNetwork IPathfindNodeNetwork.DefinitionNodeNetwork => DefinitionNodeGrid;
		public DefinitionNodeGrid DefinitionNodeGrid;

		private readonly Dictionary<PathfindaxCollisionCategory, DijkstraNode[]> _nodeNetworks = new Dictionary<PathfindaxCollisionCategory, DijkstraNode[]>();
		private readonly int _maxClearance;

		public DijkstraNodeGrid(DefinitionNodeGrid definitionNodeGrid, int maxClearance = -1)
		{
			DefinitionNodeGrid = definitionNodeGrid;
			_maxClearance = maxClearance;
		}

		IReadOnlyList<ICollisionLayerNode> IPathfindNodeNetwork.GetCollisionLayerNetwork(PathfindaxCollisionCategory collisionCategory) => new ReadOnlyListAdapter<DijkstraNode, ICollisionLayerNode>(GetCollisionLayerNetwork(collisionCategory));
		public DijkstraNode[] GetCollisionLayerNetwork(PathfindaxCollisionCategory collisionCategory)
		{
			if (!_nodeNetworks.TryGetValue(collisionCategory, out var pathfindingNetwork))
			{
				var watch = Stopwatch.StartNew();
				pathfindingNetwork = GenerateNodeNetwork(collisionCategory);

				Debug.WriteLine($"Generated pathfind nodenetwork in {watch.ElapsedMilliseconds} ms");
				_nodeNetworks.Add(collisionCategory, pathfindingNetwork);
			}
			return pathfindingNetwork;
		}

		private DijkstraNode[] GenerateNodeNetwork(PathfindaxCollisionCategory collisionCategory)
		{
			var gridClearanceGenerator = new GridClearanceGenerator(DefinitionNodeGrid, _maxClearance);
			var nodeNetwork = new DijkstraNode[DefinitionNodeGrid.NodeCount];
			for (var i = 0; i < DefinitionNodeGrid.NodeGrid.Array.Length; i++)
			{
				var definitionNode = DefinitionNodeGrid.NodeGrid.Array[i];
				nodeNetwork[i] = new DijkstraNode
				{
					Clearance = _maxClearance == -1 ? int.MaxValue : gridClearanceGenerator.CalculateGridNodeClearances(definitionNode, collisionCategory, _maxClearance)
				};
			}
			return nodeNetwork;
		}
	}
}