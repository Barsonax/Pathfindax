using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;
using Pathfindax.Test.Setup;

namespace Pathfindax.Test.Tests
{
	[TestFixture]
	public class AstarGridAlgorithmTests
	{
		[Test, TestCaseSource(typeof(AstarGridAlgorithmCases), nameof(AstarGridAlgorithmCases.FindPathTestCases))]
		[MaxTime(2000)]
		public void FindPath_InitializedNodegrid_PathLengthIsNot0(AstarNodeNetwork sourceNodeGrid, float x1, float y1, float x2, float y2)
		{
			var aStarAlgorithm = new AStarAlgorithm();
			var start = sourceNodeGrid.SourceNodeNetwork.GetNode(x1, y1);
			var end = sourceNodeGrid.SourceNodeNetwork.GetNode(x2, y2);
			var pathRequest = new PathRequest(start, end);
			var path = aStarAlgorithm.FindPath(sourceNodeGrid, pathRequest);
			Assert.AreEqual(path.Count > 0, true);
		}
	}
}
