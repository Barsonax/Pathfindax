using System;
using Duality;
using NUnit.Framework;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

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
			var start = definitionNodeGrid.NodeGrid.ToIndex(0, 0); //definitionNodeGrid.NodeGrid[0, 0];
			var end = definitionNodeGrid.NodeGrid.ToIndex(2, 2);

			var pathfindingNetwork = new DijkstraNodeGrid(definitionNodeGrid);
			
			var pathRequest = PathRequest.Create<IPath>(start, end);
			var potentialField = potentialFieldAlgorithm.FindPath(pathfindingNetwork, pathRequest, out var _);
			const float tolerance = 0.001f;
			Assert.AreEqual(4f ,potentialField.PotentialArray[0, 0], tolerance);
			Assert.AreEqual(3f, potentialField.PotentialArray[1, 0], tolerance);
			Assert.AreEqual(2f, potentialField.PotentialArray[2, 0], tolerance);

			Assert.AreEqual(3f, potentialField.PotentialArray[0, 1], tolerance);
			Assert.AreEqual(2f, potentialField.PotentialArray[1, 1], tolerance);
			Assert.AreEqual(1f, potentialField.PotentialArray[2, 1], tolerance);

			Assert.AreEqual(2f, potentialField.PotentialArray[0, 2], tolerance);
			Assert.AreEqual(1f, potentialField.PotentialArray[1, 2], tolerance);
			Assert.AreEqual(0f, potentialField.PotentialArray[2, 2], tolerance);
		}
	}
}
