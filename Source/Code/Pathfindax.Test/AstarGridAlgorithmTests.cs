using System.Collections;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;

namespace Pathfindax.Test
{
	[TestFixture]
	public class AstarGridAlgorithmTests
	{
		[Test, TestCaseSource(typeof(AstarGridAlgorithmCases), nameof(AstarGridAlgorithmCases.FindPathTestCases))]
		[MaxTime(2000)]
		public void FindPath_InitializedNodegrid_PathLengthIsNot0(AstarSourceNodeGrid sourceNodeGrid, float x1, float y1, float x2, float y2)
		{
			var aStarAlgorithm = new AStarGridAlgorithm();
			var start = sourceNodeGrid.SourceSourceNodeGrid.GetNode(new PositionF(x1, y1));
			var end = sourceNodeGrid.SourceSourceNodeGrid.GetNode(new PositionF(x2, y2));
			var pathRequest = new PathRequest(null, start, end);
			var path = aStarAlgorithm.FindPath(sourceNodeGrid, pathRequest);
			Assert.AreEqual(path.Count > 0, true);
		}

		public class AstarGridAlgorithmCases
		{
			private static AstarSourceNodeGrid InitializeNodeGrid(int width, int height, PositionF nodeSize)
			{
				var sourceNodeGridFactory = new SourceNodeGridFactory();
				var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(width, height, nodeSize, GenerateNodeGridConnections.All);
				return new AstarSourceNodeGrid(sourceNodeGrid);
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
}
