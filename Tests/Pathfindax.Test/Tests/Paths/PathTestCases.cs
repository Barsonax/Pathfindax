using System.Collections.Generic;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Test.Tests.Paths
{
	public class PathTestCases
	{
		public static IEnumerable<object[]> ZeroPotentialsTestCases
		{
			get
			{
				for (var y = 0; y < 3; y++)
				{
					for (var x = 0; x < 3; x++)
					{
						yield return new object[] { new Vector2(x, y) };
					}
				}
			}
		}
		public static IEnumerable<object[]> PathLengthTestCases
		{
			get
			{
				yield return GeneratePathLengthTestCase(3, 3, new[] { 0, 1, 5 }, 2.4142f);
				yield return GeneratePathLengthTestCase(3, 3, new[] { 0 }, 0f);
			}
		}

		private static object[] GeneratePathLengthTestCase(int gridWidth, int gridHeight, int[] path, float expectedPathLength)
		{
			var nodes = new Array2D<DefinitionNode>(gridWidth, gridHeight);
			for (var y = 0; y < gridHeight; y++)
			{
				for (var x = 0; x < gridWidth; x++)
				{
					nodes[x, y] = new DefinitionNode(new Vector2(x, y));
				}
			}
			return new object[] { nodes.Array, path, expectedPathLength };
		}
	}
}
