using Duality;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Duality.Test.Components
{
	/// <summary>
	/// Provides a simple <see cref="INodeGrid{TNode}"/> for testing/example purposes
	/// </summary>
	public class SourceNodeNetworkProviderMockupComponent : Component, ISourceNodeNetworkProvider<INodeGrid<IGridNode>>
	{
		private INodeGrid<IGridNode>[] _nodeGrids;
		public INodeGrid<IGridNode>[] GenerateGrid2D()
		{
			if (_nodeGrids == null)
			{
				var sourceNodeGridFactory = new SourceNodeGridFactory();
				var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(16, 16, new PositionF(32, 32), GenerateNodeGridNeighbours.All);
				sourceNodeGrid.NodeArray[5, 4].Walkable = false;
				sourceNodeGrid.NodeArray[5, 5].Walkable = false;
				sourceNodeGrid.NodeArray[5, 6].Walkable = false;
				sourceNodeGrid.NodeArray[5, 7].Walkable = false;
				sourceNodeGrid.NodeArray[5, 8].Walkable = false;

				sourceNodeGrid.NodeArray[5, 10].Walkable = false;
				sourceNodeGrid.NodeArray[6, 10].Walkable = false;
				sourceNodeGrid.NodeArray[7, 10].Walkable = false;
				sourceNodeGrid.NodeArray[8, 10].Walkable = false;
				sourceNodeGrid.NodeArray[9, 10].Walkable = false;
				_nodeGrids = new INodeGrid<IGridNode>[] { sourceNodeGrid };
			}
			return _nodeGrids;
		}
	}
}
