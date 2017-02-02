using System.Collections;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Primitives;

namespace Pathfindax.Test
{
	[TestFixture]
	public class AstarAlgorithmTests
	{
		[Test, TestCaseSource(typeof(AstarAlgorithmCases), nameof(AstarAlgorithmCases.FindPathTestCases))]
		[MaxTime(2000)]
		public void FindPath_InitializedNodegrid_PathLengthIsNot0(AStarGrid nodeGrid, float x1, float y1, float x2, float y2)
		{
			var aStarAlgorithm = new AStarAlgorithm();
			var path = aStarAlgorithm.FindPath(nodeGrid, new PositionF(x1, y1), new PositionF(x2, y2));
			Assert.AreEqual(path.Count > 0, true);
		}
	}

	public class AstarAlgorithmCases
	{
		private static AStarGrid InitializeNodeGrid(int width, int height, PositionF nodeSize)
		{
			var sourceNodeGridFactory = new SourceNodeGridFactory();
			var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(width, height, nodeSize, GenerateNodeGridNeighbours.All);
			return new AStarGrid(sourceNodeGrid);
		}

		public static IEnumerable FindPathTestCases
		{
			get
			{
				yield return new TestCaseData(InitializeNodeGrid(16, 16, new PositionF(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(15, 15, new PositionF(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(15, 16, new PositionF(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(16, 15, new PositionF(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(16, 24, new PositionF(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(8, 16, new PositionF(1, 1)), 0.0f, 0.0f, 13.0f, 7.0f);
				yield return new TestCaseData(InitializeNodeGrid(16, 16, new PositionF(1, 1)), 5.0f, 3.0f, 8.0f, 14.0f);
			}
		}
	}
}
