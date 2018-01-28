using System;
using Duality;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Test.Tests.Algorithms
{
	[TestFixture]
	public class PotentialFieldAlgorithmTests
	{
		[Test]
		[MaxTime(2000)]
		public void FindPath_InitializedNodegrid_ValuesPotentialFieldAreCorrect()
		{		
			var definitionNodeGrid = new DefinitionNodeGrid(GenerateNodeGridConnections.All, 3, 3, new Vector2(1, 1));
			var potentialFieldAlgorithm = new PotentialFieldAlgorithm(0, definitionNodeGrid.NodeCount);
			var start = definitionNodeGrid.NodeGrid[0, 0];
			var end = definitionNodeGrid.NodeGrid[2, 2];

			var pathfindingNetwork = new DijkstraNodeGrid(definitionNodeGrid);
			var pathRequest = new PathRequest<IPath>(start, end);
			var potentialField = potentialFieldAlgorithm.FindPath(pathfindingNetwork, pathRequest, out var _);
			const float tolerance = 0.001f;
			Assert.AreEqual(Math.Abs(Math.Abs(potentialField.PotentialArray[0, 0]) - 4f) < tolerance, true);
			Assert.AreEqual(Math.Abs(Math.Abs(potentialField.PotentialArray[1, 0]) - 3f) < tolerance, true);
			Assert.AreEqual(Math.Abs(Math.Abs(potentialField.PotentialArray[2, 0]) - 2f) < tolerance, true);

			Assert.AreEqual(Math.Abs(Math.Abs(potentialField.PotentialArray[0, 1]) - 3f) < tolerance, true);
			Assert.AreEqual(Math.Abs(Math.Abs(potentialField.PotentialArray[1, 1]) - 2f) < tolerance, true);
			Assert.AreEqual(Math.Abs(Math.Abs(potentialField.PotentialArray[2, 1]) - 1f) < tolerance, true);

			Assert.AreEqual(Math.Abs(Math.Abs(potentialField.PotentialArray[0, 2]) - 2f) < tolerance, true);
			Assert.AreEqual(Math.Abs(Math.Abs(potentialField.PotentialArray[1, 2]) - 1f) < tolerance, true);
			Assert.AreEqual(Math.Abs(Math.Abs(potentialField.PotentialArray[2, 2]) - 0f) < tolerance, true);
		}
	}
}
