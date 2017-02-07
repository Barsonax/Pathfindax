using NUnit.Framework;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Duality.Test
{
	[TestFixture]
	public class SourceNodeGridFactoryTests
	{
		[Test]
		public void CalculateGridNodeClearances_FilledNodeGrid_Passes()
		{
			var sourceNodeGridFactory = new SourceNodeGridFactory();
			var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(16, 16, new PositionF(1, 1), GenerateNodeGridConnections.All);
			sourceNodeGrid.NodeArray[2, 2].Connections[5].CollisionCategory = PathfindaxCollisionCategory.Cat1;
			sourceNodeGrid.NodeArray[3, 3].Connections[6].CollisionCategory = PathfindaxCollisionCategory.Cat2;
			var clearances = sourceNodeGridFactory.CalculateGridNodeClearances(sourceNodeGrid, sourceNodeGrid.NodeArray[0, 0], 5);
			Assert.AreEqual(true, clearances[0].CollisionCategory == PathfindaxCollisionCategory.Cat1);
			Assert.AreEqual(true, clearances[0].Clearance == 3);
			Assert.AreEqual(true, clearances[1].CollisionCategory == (PathfindaxCollisionCategory.Cat1 | PathfindaxCollisionCategory.Cat2));
			Assert.AreEqual(true, clearances[1].Clearance == 4);
		}
	}
}
