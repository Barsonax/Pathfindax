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
				/*nodeGrid.NodeArray[5, 4].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				nodeGrid.NodeArray[5, 5].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				nodeGrid.NodeArray[5, 6].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				nodeGrid.NodeArray[5, 7].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				nodeGrid.NodeArray[5, 8].CollisionCategory = PathfindaxCollisionCategory.Cat1;

				nodeGrid.NodeArray[5, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				nodeGrid.NodeArray[6, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				nodeGrid.NodeArray[7, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				nodeGrid.NodeArray[8, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				nodeGrid.NodeArray[9, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;*/
				_nodeGrid = nodeGrid;
			}
			return _nodeGrid;
		}
	}
}
