using Duality.Editor;
using Pathfindax.Factories;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	/// <summary>
	/// Provides a simple <see cref="ISourceNodeGrid{TNode}"/> for testing/example purposes
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class SourceNodeGridProvderMockupComponent : Component, ISourceNodeNetworkProvider<ISourceNodeGrid<SourceNode>>
	{
		private ISourceNodeGrid<SourceNode> _sourceNodeGrid;
		public ISourceNodeGrid<SourceNode> GenerateGrid2D()
		{
			if (_sourceNodeGrid == null)
			{
				var sourceNodeGridFactory = new SourceNodeGridFactory();
				var nodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(16, 16, new Vector2(32, 32), GenerateNodeGridConnections.All, 5);
				/*sourceNodeGrid.NodeArray[5, 4].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				sourceNodeGrid.NodeArray[5, 5].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				sourceNodeGrid.NodeArray[5, 6].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				sourceNodeGrid.NodeArray[5, 7].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				sourceNodeGrid.NodeArray[5, 8].CollisionCategory = PathfindaxCollisionCategory.Cat1;

				sourceNodeGrid.NodeArray[5, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				sourceNodeGrid.NodeArray[6, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				sourceNodeGrid.NodeArray[7, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				sourceNodeGrid.NodeArray[8, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				sourceNodeGrid.NodeArray[9, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;*/
				_sourceNodeGrid = nodeGrid;
			}
			return _sourceNodeGrid;
		}
	}
}
