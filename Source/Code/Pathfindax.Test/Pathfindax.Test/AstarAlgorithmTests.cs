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
		[MaxTime(5000)]
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

			var sourceNodeGrid = new SourceNodeGrid(array, 1);
			var nodeGrid = new AStarGrid(sourceNodeGrid);
			var aStarAlgorithm = new AStarAlgorithm();
			var path = aStarAlgorithm.FindPath(nodeGrid, new Vector2(0, 0), new Vector2(13, 7));
			Assert.AreEqual(path.Count > 0, true);
		}
	}
}
