using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Duality;
using NUnit.Framework;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Test.Tests.Paths
{
	public class PathTestCases
	{
		public static IEnumerable ZeroPotentialsTestCases
		{
			get
			{
				for (var y = 0; y < 3; y++)
				{
					for (var x = 0; x < 3; x++)
					{
						yield return new TestCaseData(new Vector2(x, y));
					}
				}
			}
		}
		public static IEnumerable PathLengthTestCases
		{
			get
			{
				yield return GeneratePathLengthTestCase(3, 3, new[] { 0, 1, 5 }, 2.4142f);
				yield return GeneratePathLengthTestCase(3, 3, new[] { 0 }, 0f);
			}
		}

		private static TestCaseData GeneratePathLengthTestCase(int gridWidth, int gridHeight, int[] path, float expectedPathLength)
		{
			var nodes = new Array2D<DefinitionNode>(gridWidth, gridHeight);
			for (var y = 0; y < gridHeight; y++)
			{
				for (var x = 0; x < gridWidth; x++)
				{
					nodes[x, y] = new DefinitionNode(new Vector2(x, y));
				}
			}
			return new TestCaseData(nodes.Array, path, expectedPathLength);
		}
	}
}
