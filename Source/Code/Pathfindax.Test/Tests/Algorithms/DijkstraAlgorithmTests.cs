using System.Collections.Generic;
using Duality;
using NSubstitute;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Test.Tests.Algorithms
{
	[TestFixture]
	public class DijkstraAlgorithmTests
	{
		[Test, TestCaseSource(typeof(TestCases), nameof(TestCases.OptimalPathTestCases))]
		public void FindPath_InitializedNodegrid_PathIsOptimal(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, float expectedPathLength)
		{
			var dijkstraAlgorithm = new DijkstraAlgorithm(definitionNodeGrid.NodeCount);

			var start = definitionNodeGrid.NodeGrid.ToIndex(gridStart.X, gridStart.Y);
			var end = definitionNodeGrid.NodeGrid.ToIndex(gridEnd.X, gridEnd.Y);

			var pathfindingNetwork = new DijkstraNodeGrid(definitionNodeGrid, 5);
			var pathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), start, end, PathfindaxCollisionCategory.Cat1);
			var path = dijkstraAlgorithm.FindPath(pathfindingNetwork, pathRequest, out var _);
			var pathLength = path.GetPathLength();

			var path2 = new List<Point2>();
			for (int i = 0; i < path.Path.Length; i++)
			{
				path2.Add((Point2)definitionNodeGrid.NodeArray[path.Path[i]].Position);
			}
			Assert.AreEqual(expectedPathLength, pathLength, 0.1f);
		}
	}
}
