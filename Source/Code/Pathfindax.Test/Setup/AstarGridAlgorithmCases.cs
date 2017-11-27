using System.Collections;
using Duality;
using NUnit.Framework;
using Pathfindax.Graph;

namespace Pathfindax.Test.Setup
{
	public class AstarAlgorithmCases
	{
		public static DefinitionNodeGrid InitializeNodeGrid(int width, int height, Vector2 nodeSize)
		{
			var sourceNodeGrid = new DefinitionNodeGrid(GenerateNodeGridConnections.All, width, height, nodeSize);
			return sourceNodeGrid;
		}

		public static IEnumerable FindPathTestCases
		{
			get
			{
				yield return new TestCaseData(InitializeNodeGrid(16, 16, new Vector2(1, 1)), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(15, 15, new Vector2(1, 1)), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(15, 16, new Vector2(1, 1)), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(16, 15, new Vector2(1, 1)), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(16, 24, new Vector2(1, 1)), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(8, 16, new Vector2(1, 1)), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(16, 16, new Vector2(1, 1)), 5, 3, 8, 14);
			}
		}
	}
}