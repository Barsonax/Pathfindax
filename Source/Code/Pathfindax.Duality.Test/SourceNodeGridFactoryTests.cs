using Duality;
using NUnit.Framework;
using Pathfindax.Collections;
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
			var sourceNodeGridFactory = new DefinitionNodeGridFactory();
			const int width = 4;
			const int height = 4;
			var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(width, height, new Vector2(1, 1), GenerateNodeGridConnections.All);
			var astarNodeNetwork = new AstarNodeNetwork(sourceNodeGrid, new GridClearanceGenerator(sourceNodeGrid, 5));
			
			var sourceNodeNetworkCat1 = new Array2D<AstarNode>(astarNodeNetwork.GetCollisionLayerNetwork(PathfindaxCollisionCategory.Cat1), width, height);
			Assert.AreEqual(4, sourceNodeNetworkCat1[0, 0].Clearance);
			Assert.AreEqual(3, sourceNodeNetworkCat1[1, 0].Clearance);
			Assert.AreEqual(2, sourceNodeNetworkCat1[2, 0].Clearance);
			Assert.AreEqual(1, sourceNodeNetworkCat1[3, 0].Clearance);

			Assert.AreEqual(3, sourceNodeNetworkCat1[0, 1].Clearance);
			Assert.AreEqual(3, sourceNodeNetworkCat1[1, 1].Clearance);
			Assert.AreEqual(2, sourceNodeNetworkCat1[2, 1].Clearance);
			Assert.AreEqual(1, sourceNodeNetworkCat1[3, 1].Clearance);
		}
	}
}
