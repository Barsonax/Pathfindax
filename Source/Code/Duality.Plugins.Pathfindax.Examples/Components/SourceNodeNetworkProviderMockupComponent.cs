using Duality;
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
		private INodeGrid<IGridNode> _nodeGrid;
		public INodeGrid<IGridNode> GenerateGrid2D()
		{
			if (_nodeGrid == null)
			{
				var sourceNodeGridFactory = new SourceNodeGridFactory();
				var nodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(16, 16, new PositionF(32, 32), GenerateNodeGridConnections.All);
				nodeGrid.NodeArray[5, 4].Walkable = false;
				nodeGrid.NodeArray[5, 5].Walkable = false;
				nodeGrid.NodeArray[5, 6].Walkable = false;
				nodeGrid.NodeArray[5, 7].Walkable = false;
				nodeGrid.NodeArray[5, 8].Walkable = false;

				nodeGrid.NodeArray[5, 10].Walkable = false;
				nodeGrid.NodeArray[6, 10].Walkable = false;
				nodeGrid.NodeArray[7, 10].Walkable = false;
				nodeGrid.NodeArray[8, 10].Walkable = false;
				nodeGrid.NodeArray[9, 10].Walkable = false;
				_nodeGrid = nodeGrid;
			}
			return _nodeGrid;
		}
	}
}
