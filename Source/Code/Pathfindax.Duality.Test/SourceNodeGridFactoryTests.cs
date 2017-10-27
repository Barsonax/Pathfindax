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
			var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(16, 16, new Vector2(1, 1), GenerateNodeGridConnections.All);
			sourceNodeGrid.NodeArray[2, 2].Connections[5] = new NodeConnection(sourceNodeGrid.NodeArray[2, 2].Connections[5].To, PathfindaxCollisionCategory.Cat1);
			sourceNodeGrid.NodeArray[3, 3].Connections[6] = new NodeConnection(sourceNodeGrid.NodeArray[3, 3].Connections[6].To, PathfindaxCollisionCategory.Cat2);
			sourceNodeGrid.NodeArray[5, 3].Connections[6] = new NodeConnection(sourceNodeGrid.NodeArray[5, 3].Connections[2].To, PathfindaxCollisionCategory.Cat3);
			var clearances = sourceNodeGridFactory.CalculateGridNodeClearances(sourceNodeGrid, sourceNodeGrid.NodeArray[0, 0], 6);
			Assert.AreEqual(true, clearances[0].CollisionCategory == PathfindaxCollisionCategory.Cat1);
			Assert.AreEqual(true, clearances[0].Clearance == 3);
			Assert.AreEqual(true, clearances[1].CollisionCategory == PathfindaxCollisionCategory.Cat2);
			Assert.AreEqual(true, clearances[1].Clearance == 4);
			Assert.AreEqual(true, clearances[2].CollisionCategory == PathfindaxCollisionCategory.Cat3);
			Assert.AreEqual(true, clearances[2].Clearance == 6);
		}

		[Test]
		public void CalculateGridNodeClearances2_FilledNodeGrid_Passes()
		{
			var sourceNodeGridFactory = new SourceNodeGridFactory();
			var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(16, 16, new Vector2(1, 1), GenerateNodeGridConnections.All);
			sourceNodeGrid.NodeArray[2, 2].Connections[5] = new NodeConnection(sourceNodeGrid.NodeArray[2, 2].Connections[5].To, PathfindaxCollisionCategory.Cat1);
			sourceNodeGrid.NodeArray[3, 3].Connections[6] = new NodeConnection(sourceNodeGrid.NodeArray[3, 3].Connections[6].To, PathfindaxCollisionCategory.Cat2);
			sourceNodeGrid.NodeArray[5, 3].Connections[6] = new NodeConnection(sourceNodeGrid.NodeArray[5, 3].Connections[2].To, PathfindaxCollisionCategory.Cat3);
			var clearances = sourceNodeGridFactory.CalculateGridNodeClearances(sourceNodeGrid, sourceNodeGrid.NodeArray[0, 0], 5);
			Assert.AreEqual(clearances.Count, 2);
			Assert.AreEqual(true, clearances[0].CollisionCategory == PathfindaxCollisionCategory.Cat1);
			Assert.AreEqual(true, clearances[0].Clearance == 3);
			Assert.AreEqual(true, clearances[1].CollisionCategory == PathfindaxCollisionCategory.Cat2);
			Assert.AreEqual(true, clearances[1].Clearance == 4);
		}
	}
}
