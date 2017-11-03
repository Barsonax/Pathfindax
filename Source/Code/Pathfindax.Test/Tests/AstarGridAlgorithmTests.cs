using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;
using Pathfindax.Test.Setup;

namespace Pathfindax.Test.Tests
{
	[TestFixture]
	public class AstarAlgorithmTests
	{
		[Test, TestCaseSource(typeof(AstarAlgorithmCases), nameof(AstarAlgorithmCases.FindPathTestCases))]
		[MaxTime(2000)]
		public void FindPath_InitializedNodegrid_PathLengthIsNot0(SourceNodeGrid sourceNodeGrid, int x1, int y1, int x2, int y2)
		{
			var aStarAlgorithm = new AStarAlgorithm();
			
			var start = sourceNodeGrid.DefinitionNodeArray[x1, y1];
			var end = sourceNodeGrid.DefinitionNodeArray[x1, y1];

			var pathfindingNetwork = new AstarNodeNetwork(sourceNodeGrid);
			var pathRequest = new PathRequest(start, end);
			var path = aStarAlgorithm.FindPath(pathfindingNetwork, pathRequest);
			Assert.AreEqual(path.Count > 0, true);
		}
	}
}
