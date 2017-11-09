using System.Collections.Generic;
using System.Diagnostics;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public class DijkstraNodeGrid : IPathfindNodeNetwork<DijkstraNode>
	{
		IDefinitionNodeNetwork IPathfindNodeNetwork.DefinitionNodeNetwork => DefinitionNodeGrid;
		public DefinitionNodeGrid DefinitionNodeGrid;

		private readonly Dictionary<PathfindaxCollisionCategory, DijkstraNode[]> _nodeNetworks = new Dictionary<PathfindaxCollisionCategory, DijkstraNode[]>();
		private readonly int _maxClearance;

		public DijkstraNodeGrid(DefinitionNodeGrid definitionNodeGrid, int maxClearance)
		{
			DefinitionNodeGrid = definitionNodeGrid;
			_maxClearance = maxClearance;
		}

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
			for (var i = 0; i < DefinitionNodeGrid.NodeCount; i++)
			{
				nodeNetwork[i] = new DijkstraNode(DefinitionNodeGrid[i])
				{
					Clearance = gridClearanceGenerator.CalculateGridNodeClearances(i, collisionCategory, _maxClearance)
				};
			}
			return nodeNetwork;
		}
	}
}