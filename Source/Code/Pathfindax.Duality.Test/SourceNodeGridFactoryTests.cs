using Duality;
using NUnit.Framework;
using Pathfindax.Collections;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Duality.Test
{
	[TestFixture]
	public class SourceNodeGridFactoryTests
	{
		[Test]
		public void CalculateGridNodeClearances_FilledNodeGrid_Passes()
		{
			const int width = 4;
			const int height = 4;
			var factory = new DefinitionNodeGridFactory();
			var nodeGrid = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, width, height);
			var sourceNodeGrid = new DefinitionNodeGrid(nodeGrid, new Vector2(1, 1));
			var astarNodeNetwork = new AstarNodeNetwork(sourceNodeGrid, new BrushfireClearanceGenerator(sourceNodeGrid, 5));
			
			var sourceNodeNetworkCat1 = new Array2D<AstarNode>(astarNodeNetwork.GetCollisionLayerNetwork(PathfindaxCollisionCategory.Cat1), width, height);
			Assert.AreEqual(1, sourceNodeNetworkCat1[0, 0].Clearance);
			Assert.AreEqual(1, sourceNodeNetworkCat1[1, 0].Clearance);
			Assert.AreEqual(1, sourceNodeNetworkCat1[2, 0].Clearance);
			Assert.AreEqual(1, sourceNodeNetworkCat1[3, 0].Clearance);

			Assert.AreEqual(1, sourceNodeNetworkCat1[0, 1].Clearance);
			Assert.AreEqual(3, sourceNodeNetworkCat1[1, 1].Clearance);
			Assert.AreEqual(3, sourceNodeNetworkCat1[2, 1].Clearance);
			Assert.AreEqual(1, sourceNodeNetworkCat1[3, 1].Clearance);
		}
	}
}
