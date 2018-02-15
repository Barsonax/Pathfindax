using Duality;
using NUnit.Framework;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Test.Tests.Algorithms;

namespace Pathfindax.Test.Tests.Factories
{
	[TestFixture]
	public class NodeGridFactoryTest
	{
		[Test, TestCaseSource(typeof(TestCases), nameof(TestCases.NodeGridGenerationTestCases))]
		public void GeneratePreFilledArray(int width, int height, Point2[] blockedNodes)
		{
			var factory = new DefinitionNodeGridFactory();
			var collisionMask = new NodeGridCollisionMask(PathfindaxCollisionCategory.Cat1, width, height);
			foreach (var blockedNode in blockedNodes)
			{
				collisionMask.Layers[0].CollisionDirections[blockedNode.X, blockedNode.Y] = CollisionDirection.Solid;
			}
			var nodeGrid = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, collisionMask);

			Assert.AreEqual(width, nodeGrid.Width);
			Assert.AreEqual(height, nodeGrid.Height);

			foreach (var point in blockedNodes)
			{
				foreach (var connection in nodeGrid[point.X, point.Y].Connections)
				{
					Assert.AreEqual(PathfindaxCollisionCategory.Cat1, connection.CollisionCategory);
				}
			}
		}
	}
}
