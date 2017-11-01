using Duality;
using NUnit.Framework;
using Pathfindax.Factories;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Pathfindax.Duality.Test
{
	[TestFixture]
	public class SourceNodeGridFactoryTests
	{
		[Test]
		public void CalculateGridNodeClearances_FilledNodeGrid_Passes()
		{
			var sourceNodeGridFactory = new SourceNodeGridFactory();
			var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(8, 8, new Vector2(1, 1), GenerateNodeGridConnections.All);
			sourceNodeGrid.DefinitionNodeArray[2, 2].Connections[5] = new NodeConnection(sourceNodeGrid.DefinitionNodeArray[2, 2].Connections[5].To, PathfindaxCollisionCategory.Cat1);
			sourceNodeGrid.DefinitionNodeArray[3, 3].Connections[6] = new NodeConnection(sourceNodeGrid.DefinitionNodeArray[3, 3].Connections[6].To, PathfindaxCollisionCategory.Cat2);
			sourceNodeGrid.DefinitionNodeArray[5, 3].Connections[6] = new NodeConnection(sourceNodeGrid.DefinitionNodeArray[5, 3].Connections[6].To, PathfindaxCollisionCategory.Cat3);

			var sourceNodeNetworkCat1 = sourceNodeGrid.GetSourceNetwork(PathfindaxCollisionCategory.Cat1);
			Assert.AreEqual(2, sourceNodeNetworkCat1[0].Clearance);
			Assert.AreEqual(2, sourceNodeNetworkCat1[1].Clearance);

			var sourceNodeNetworkCat2 = sourceNodeGrid.GetSourceNetwork(PathfindaxCollisionCategory.Cat2);
			Assert.AreEqual(3, sourceNodeNetworkCat2[0].Clearance);

			var sourceNodeNetworkCat3 = sourceNodeGrid.GetSourceNetwork(PathfindaxCollisionCategory.Cat3);
			Assert.AreEqual(5, sourceNodeNetworkCat3[0].Clearance);
		}
	}
}
