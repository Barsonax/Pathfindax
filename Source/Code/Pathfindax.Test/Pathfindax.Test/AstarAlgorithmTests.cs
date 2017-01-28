using Duality;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Collections;
using Pathfindax.Grid;

namespace Pathfindax.Test
{
	[TestFixture]
	public class AstarAlgorithmTests
	{
		[Test]
		[Parallelizable]
		public void FindPath_16x16NodeGrid_PathLengthIsNot0()
		{
			var width = 16;
			var height = 16;
			var array = new Array2D<INode>(width, height);
			for (int y = 0; y < height; y++)
			{
				for (int x = 0; x < width; x++)
				{
					array[x, y] = new Node(new Vector2(x, y));
				}
			}

			var staticNodeGrid = new SourceNodeGrid(array, 1);
			var nodeGrid = new AStarGrid(staticNodeGrid);
			var aStarAlgorithm = new AStarAlgorithm(nodeGrid);
			var startSourceNode = staticNodeGrid.NodeFromWorldPoint(new Vector2(0, 0));
			var endSourceNode = staticNodeGrid.NodeFromWorldPoint(new Vector2(13, 7));
			var startNode = nodeGrid.GetNode(startSourceNode);
			var endNode = nodeGrid.GetNode(endSourceNode);
			var path = aStarAlgorithm.FindPath(startNode, endNode);
			Assert.AreEqual(path.Count > 0, true);
		}
	}
}
