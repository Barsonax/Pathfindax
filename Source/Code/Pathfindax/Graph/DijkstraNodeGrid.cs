using System.Collections.Generic;
using System.Diagnostics;
using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.Graph
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

		IReadOnlyList<ICollisionLayerNode> IPathfindNodeNetwork.GetCollisionLayerNetwork(PathfindaxCollisionCategory collisionCategory) => GetCollisionLayerNetwork(collisionCategory);
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
			var i = 0;
			for (int y = 0; y < DefinitionNodeGrid.NodeGrid.Height; y++)
			{
				for (int x = 0; x < DefinitionNodeGrid.NodeGrid.Width; x++)
				{
					nodeNetwork[i] = new DijkstraNode(DefinitionNodeGrid.NodeGrid[x, y], new Point2(x, y))
					{
						Clearance = gridClearanceGenerator.CalculateGridNodeClearances(i, collisionCategory, _maxClearance)
					};
					i++;
				}
			}
			return nodeNetwork;
		}
	}
}