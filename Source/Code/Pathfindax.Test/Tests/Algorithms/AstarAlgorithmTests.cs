using System.Collections;
using Duality;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Test.Tests.Algorithms
{
	[TestFixture]
	public class AstarAlgorithmTests
	{
		[Test, TestCaseSource(typeof(AstarAlgorithmTests), nameof(FindPathTestCases))]
		[MaxTime(2000)]
		public void FindPath_InitializedNodegrid_PathLengthIsNot0(DefinitionNodeGrid definitionNodeGrid, int x1, int y1, int x2, int y2)
		{
			var aStarAlgorithm = new AStarAlgorithm(definitionNodeGrid.NodeCount);

			var start = definitionNodeGrid.NodeGrid[x1, y1];
			var end = definitionNodeGrid.NodeGrid[x1, y1];

			var pathfindingNetwork = new AstarNodeNetwork(definitionNodeGrid, new GridClearanceGenerator(definitionNodeGrid, 5));
			var pathRequest = new PathRequest<IPath>(start, end);
			var path = aStarAlgorithm.FindPath(pathfindingNetwork, pathRequest, out var _);
			Assert.AreEqual(path.Path.Length > 0, true);
		}

		public static DefinitionNodeGrid InitializeNodeGrid(int width, int height)
		{
			return new DefinitionNodeGrid(GenerateNodeGridConnections.All, width, height, new Vector2(1, 1));
		}

		public static IEnumerable FindPathTestCases
		{
			get
			{
				yield return new TestCaseData(InitializeNodeGrid(16, 16), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(15, 15), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(15, 16), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(16, 15), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(16, 24), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(8, 16), 0, 0, 13, 7);
				yield return new TestCaseData(InitializeNodeGrid(16, 16), 5, 3, 8, 14);
			}
		}
	}
}
