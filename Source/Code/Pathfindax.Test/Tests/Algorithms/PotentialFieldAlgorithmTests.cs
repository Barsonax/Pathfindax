using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
		[Test, TestCaseSource(typeof(AlgorithmTestCases), nameof(AlgorithmTestCases.PossiblePathTestCases))]
		public void FindPath_InitializedNodegrid_PathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var potentialField = RunPotentialField(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.AreEqual(true, succes);
		}

		[Test, TestCaseSource(typeof(AlgorithmTestCases), nameof(AlgorithmTestCases.NoPossiblePathTestCases))]
		public void FindPath_InitializedNodegrid_NoPathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var potentialField = RunPotentialField(definitionNodeGrid, gridStart, gridEnd, out var succes);
			Assert.AreEqual(false, succes);
		}

		private PotentialField RunPotentialField(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, out bool succes)
		{
			var potentialFieldAlgorithm = new PotentialFieldAlgorithm(0 ,definitionNodeGrid.NodeCount);

			var start = definitionNodeGrid.NodeGrid.ToIndex(gridStart.X, gridStart.Y);
			var end = definitionNodeGrid.NodeGrid.ToIndex(gridEnd.X, gridEnd.Y);

			var pathfindingNetwork = new DijkstraNodeGrid(definitionNodeGrid, 5);
			var pathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), start, end, PathfindaxCollisionCategory.Cat1);
			return potentialFieldAlgorithm.FindPath(pathfindingNetwork, pathRequest, out succes);
		}
	}
}
