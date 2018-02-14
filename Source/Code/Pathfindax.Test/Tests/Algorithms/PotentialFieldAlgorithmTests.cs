using System;
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
	public class PotentialFieldAlgorithmTests
	{
		[Test, TestCaseSource(typeof(TestCases), nameof(TestCases.OptimalPathTestCases))]
		public void FindPath_InitializedNodegrid_PathIsOptimal(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, float expectedPathLength)
		{
			var potentialFieldAlgorithm = new PotentialFieldAlgorithm(0, definitionNodeGrid.NodeCount);

			var start = definitionNodeGrid.NodeGrid.ToIndex(gridStart.X, gridStart.Y);
			var end = definitionNodeGrid.NodeGrid.ToIndex(gridEnd.X, gridEnd.Y);

			var pathfindingNetwork = new DijkstraNodeGrid(definitionNodeGrid, 5);
			var pathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), start, end, PathfindaxCollisionCategory.Cat1);
			var potentialField = potentialFieldAlgorithm.FindPath(pathfindingNetwork, pathRequest, out var _);

			var euclidianDistance = new EuclideanDistance();
			var gridPosition = gridStart;
			var distanceTraveled = 0f;
			var path = new List<Point2>();
			path.Add(gridPosition);
			while (gridPosition != gridEnd)
			{
				
				var heading = potentialField.GetHeading(gridPosition);
				var nextGridPosition = gridPosition;
				if (heading.X > 0.01f) nextGridPosition.X++;
				else if (heading.X < -0.01f) nextGridPosition.X--;

				if (heading.Y > 0.01f) nextGridPosition.Y++;
				else if (heading.Y < -0.01f) nextGridPosition.Y--;

				distanceTraveled += euclidianDistance.GetDistance(gridPosition, nextGridPosition);

				gridPosition = nextGridPosition;
				path.Add(gridPosition);
			} 
			Assert.AreEqual(expectedPathLength, distanceTraveled, 0.1f);
		}

		[Test]
		[MaxTime(2000)]
		public void FindPath_InitializedNodegrid_ValuesPotentialFieldAreCorrect()
		{
			var definitionNodeGrid = new DefinitionNodeGrid(GenerateNodeGridConnections.All, 3, 3, new Vector2(1, 1));
			var potentialFieldAlgorithm = new PotentialFieldAlgorithm(0, definitionNodeGrid.NodeCount);
			var start = definitionNodeGrid.NodeGrid.ToIndex(0, 0); //definitionNodeGrid.NodeGrid[0, 0];
			var end = definitionNodeGrid.NodeGrid.ToIndex(2, 2);

			var pathfindingNetwork = new DijkstraNodeGrid(definitionNodeGrid);

			var pathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), start, end);
			var potentialField = potentialFieldAlgorithm.FindPath(pathfindingNetwork, pathRequest, out var _);
			const float tolerance = 0.001f;
			Assert.AreEqual(2.828427f, potentialField.PotentialArray[0, 0], tolerance);
			Assert.AreEqual(2.414214f, potentialField.PotentialArray[1, 0], tolerance);
			Assert.AreEqual(2f, potentialField.PotentialArray[2, 0], tolerance);

			Assert.AreEqual(2.414214f, potentialField.PotentialArray[0, 1], tolerance);
			Assert.AreEqual(1.414214f, potentialField.PotentialArray[1, 1], tolerance);
			Assert.AreEqual(1f, potentialField.PotentialArray[2, 1], tolerance);

			Assert.AreEqual(2f, potentialField.PotentialArray[0, 2], tolerance);
			Assert.AreEqual(1f, potentialField.PotentialArray[1, 2], tolerance);
			Assert.AreEqual(0f, potentialField.PotentialArray[2, 2], tolerance);
		}
	}
}
