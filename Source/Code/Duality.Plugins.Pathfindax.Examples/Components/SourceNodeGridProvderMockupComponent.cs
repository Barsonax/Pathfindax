using Duality.Editor;
using Pathfindax.Factories;
using Pathfindax.Grid;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	/// <summary>
	/// Provides a simple <see cref="IDefinitionNodeGrid"/> for testing/example purposes
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class DefinitionNodeGridProvderMockupComponent : Component, IDefinitionNodeNetworkProvider<IDefinitionNodeGrid>
	{
		private IDefinitionNodeGrid _definitionNodeGrid;
		public IDefinitionNodeGrid GenerateGrid2D()
		{
			if (_definitionNodeGrid == null)
			{
				var sourceNodeGridFactory = new DefinitionNodeGridFactory();
				var nodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(16, 16, new Vector2(32, 32), GenerateNodeGridConnections.All);
				/*definitionNodeGrid.PotentialArray[5, 4].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				definitionNodeGrid.PotentialArray[5, 5].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				definitionNodeGrid.PotentialArray[5, 6].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				definitionNodeGrid.PotentialArray[5, 7].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				definitionNodeGrid.PotentialArray[5, 8].CollisionCategory = PathfindaxCollisionCategory.Cat1;

				definitionNodeGrid.PotentialArray[5, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				definitionNodeGrid.PotentialArray[6, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				definitionNodeGrid.PotentialArray[7, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				definitionNodeGrid.PotentialArray[8, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;
				definitionNodeGrid.PotentialArray[9, 10].CollisionCategory = PathfindaxCollisionCategory.Cat1;*/
				_definitionNodeGrid = nodeGrid;
			}
			return _definitionNodeGrid;
		}
	}
}
