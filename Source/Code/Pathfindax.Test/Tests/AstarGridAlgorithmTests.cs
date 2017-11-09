using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Test.Setup;

namespace Pathfindax.Test.Tests
{
	[TestFixture]
	public class AstarAlgorithmTests
	{
		[Test, TestCaseSource(typeof(AstarAlgorithmCases), nameof(AstarAlgorithmCases.FindPathTestCases))]
		[MaxTime(2000)]
		public void FindPath_InitializedNodegrid_PathLengthIsNot0(DefinitionNodeGrid sourceNodeGrid, int x1, int y1, int x2, int y2)
		{
			var aStarAlgorithm = new AStarAlgorithm();
			
			var start = sourceNodeGrid.NodeGrid[x1, y1];
			var end = sourceNodeGrid.NodeGrid[x1, y1];

			var pathfindingNetwork = new AstarNodeNetwork(sourceNodeGrid, new GridClearanceGenerator(sourceNodeGrid, 5));
			var pathRequest = new PathRequest(start, end);
			var path = (CompletedPath) aStarAlgorithm.FindPath(pathfindingNetwork, pathRequest);
			Assert.AreEqual(path.NodePath.Length > 0, true);
		}
	}
}
