using System.Collections.Generic;
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
			var sourceNodeGridFactory = new SourceNodeGridFactory();
			const int width = 4;
			const int height = 4;
			var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(width, height, new Vector2(1, 1), GenerateNodeGridConnections.All);
			//sourceNodeGrid.DefinitionNodeArray[0, 0].SetConnectionCollision(2, PathfindaxCollisionCategory.Cat1);
			//sourceNodeGrid.DefinitionNodeArray[2, 2].SetConnectionCollision(5, PathfindaxCollisionCategory.Cat1);
			//sourceNodeGrid.DefinitionNodeArray[1, 1].SetConnectionCollision(6, PathfindaxCollisionCategory.Cat2);
			//sourceNodeGrid.DefinitionNodeArray[0, 0].SetConnectionCollision(6, PathfindaxCollisionCategory.Cat3);
			var astarNodeNetwork = new AstarNodeNetwork(sourceNodeGrid, new GridClearanceGenerator(sourceNodeGrid, 5));
			
			var sourceNodeNetworkCat1 = new Array2D<AstarNode>(astarNodeNetwork.GetPathfindingNetwork(PathfindaxCollisionCategory.Cat1), width, height);
			Assert.AreEqual(4, sourceNodeNetworkCat1[0, 0].Clearance);
			Assert.AreEqual(3, sourceNodeNetworkCat1[1, 0].Clearance);
			Assert.AreEqual(2, sourceNodeNetworkCat1[2, 0].Clearance);
			Assert.AreEqual(1, sourceNodeNetworkCat1[3, 0].Clearance);

			Assert.AreEqual(3, sourceNodeNetworkCat1[0, 1].Clearance);
			Assert.AreEqual(3, sourceNodeNetworkCat1[1, 1].Clearance);
			Assert.AreEqual(2, sourceNodeNetworkCat1[2, 1].Clearance);
			Assert.AreEqual(1, sourceNodeNetworkCat1[3, 1].Clearance);

			//var sourceNodeNetworkCat2 = sourceNodeGrid.GetSourceNetwork(PathfindaxCollisionCategory.Cat2);
			//Assert.AreEqual(3, sourceNodeNetworkCat2[0].Clearance);

			//var sourceNodeNetworkCat3 = sourceNodeGrid.GetSourceNetwork(PathfindaxCollisionCategory.Cat3);
			//Assert.AreEqual(float.NaN, sourceNodeNetworkCat3[0].Clearance);
		}
	}
}
