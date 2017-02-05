﻿using Duality;
using Duality.Editor;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Primitives;
using Pathfindax.Utils;

namespace Pathfindax.Duality.Examples.Components
{
	/// <summary>
	/// Provides a simple <see cref="INodeGrid{TNode}"/> for testing/example purposes
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class SourceNodeNetworkProviderMockupComponent : Component, ISourceNodeNetworkProvider<INodeGrid<IGridNode>>
	{
		private INodeGrid<IGridNode> _nodeGrids;
		public INodeGrid<IGridNode> GenerateGrid2D()
		{
			if (_nodeGrids == null)
			{
				var sourceNodeGridFactory = new SourceNodeGridFactory();
				_nodeGrids = sourceNodeGridFactory.GeneratePreFilledArray(16, 16, new PositionF(32, 32), GenerateNodeGridConnections.All);
				_nodeGrids.NodeArray[5, 4].Walkable = false;
				_nodeGrids.NodeArray[5, 5].Walkable = false;
				_nodeGrids.NodeArray[5, 6].Walkable = false;
				_nodeGrids.NodeArray[5, 7].Walkable = false;
				_nodeGrids.NodeArray[5, 8].Walkable = false;

				_nodeGrids.NodeArray[5, 10].Walkable = false;
				_nodeGrids.NodeArray[6, 10].Walkable = false;
				_nodeGrids.NodeArray[7, 10].Walkable = false;
				_nodeGrids.NodeArray[8, 10].Walkable = false;
				_nodeGrids.NodeArray[9, 10].Walkable = false;
			}
			return _nodeGrids;
		}
	}
}