using System.Linq;
using Duality;
using NUnit.Framework;
using Pathfindax.Collections;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Test.Tests.Algorithms;
using Pathfindax.Utils;

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
				var index = nodeGrid.ToIndex(point.X, point.Y);
				foreach (var connection in nodeGrid.Array[index].Connections)
				{
					Assert.AreEqual(PathfindaxCollisionCategory.Cat1, connection.CollisionCategory);
					var connectionToThis = nodeGrid.Array[connection.To].Connections.First(x => x.To == index);
					Assert.AreEqual(PathfindaxCollisionCategory.Cat1, connectionToThis.CollisionCategory);
				}

				var topNodeIndex = GetIndex(nodeGrid, point.X, point.Y + 1);
				var bottomNodeIndex = GetIndex(nodeGrid, point.X, point.Y - 1);
				var leftNodeIndex = GetIndex(nodeGrid, point.X - 1, point.Y);
				var rightNodeIndex = GetIndex(nodeGrid, point.X + 1, point.Y);

				Assert.IsTrue(ConnectionIsBlocked(nodeGrid, topNodeIndex, leftNodeIndex));
				Assert.IsTrue(ConnectionIsBlocked(nodeGrid, topNodeIndex, rightNodeIndex));

				Assert.IsTrue(ConnectionIsBlocked(nodeGrid, bottomNodeIndex, leftNodeIndex));
				Assert.IsTrue(ConnectionIsBlocked(nodeGrid, bottomNodeIndex, rightNodeIndex));

				Assert.IsTrue(ConnectionIsBlocked(nodeGrid, leftNodeIndex, topNodeIndex));
				Assert.IsTrue(ConnectionIsBlocked(nodeGrid, leftNodeIndex, bottomNodeIndex));

				Assert.IsTrue(ConnectionIsBlocked(nodeGrid, rightNodeIndex, topNodeIndex));
				Assert.IsTrue(ConnectionIsBlocked(nodeGrid, rightNodeIndex, bottomNodeIndex));
			}
		}

		[Test, TestCaseSource(typeof(TestCases), nameof(TestCases.NodeGridGenerationTestCases))]
		public void GeneratePreFilledArray_CrossCorners(int width, int height, Point2[] blockedNodes)
		{
			var factory = new DefinitionNodeGridFactory();
			var collisionMask = new NodeGridCollisionMask(PathfindaxCollisionCategory.Cat1, width, height);
			foreach (var blockedNode in blockedNodes)
			{
				collisionMask.Layers[0].CollisionDirections[blockedNode.X, blockedNode.Y] = CollisionDirection.Solid;
			}
			var nodeGrid = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, collisionMask, true);

			Assert.AreEqual(width, nodeGrid.Width);
			Assert.AreEqual(height, nodeGrid.Height);

			foreach (var point in blockedNodes)
			{
				var index = nodeGrid.ToIndex(point.X, point.Y);
				foreach (var connection in nodeGrid.Array[index].Connections)
				{
					Assert.AreEqual(PathfindaxCollisionCategory.Cat1, connection.CollisionCategory);
					var connectionToThis = nodeGrid.Array[connection.To].Connections.First(x => x.To == index);
					Assert.AreEqual(PathfindaxCollisionCategory.Cat1, connectionToThis.CollisionCategory);
				}
			}
		}

		private bool ConnectionIsBlocked(Array2D<DefinitionNode> nodeGrid, int from, int to, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.Cat1)
		{
			if (from == -1 || to == -1) return true;
			var connection = nodeGrid.Array[from].Connections.FirstOrDefault(x => x.To == to);
			return (connection.CollisionCategory & collisionCategory) != 0;
		}

		private int GetIndex(IReadOnlyArray2D readOnlyArray2D, int x, int y)
		{
			if (x >= 0 && y >= 0 && x < readOnlyArray2D.Width && y < readOnlyArray2D.Height)
			{
				return readOnlyArray2D.ToIndex(x, y);
			}
			return -1;
		}
	}
}
