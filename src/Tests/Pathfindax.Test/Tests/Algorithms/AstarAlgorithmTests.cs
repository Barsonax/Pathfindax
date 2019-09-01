using Duality;
using NSubstitute;
using Xunit;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Test.Tests.Algorithms
{
	public class AstarAlgorithmTests
	{
		[Theory, MemberData(nameof(AlgorithmTestCases.OptimalPathTestCases), MemberType = typeof(AlgorithmTestCases))]
		public void FindPath_InitializedNodegrid_PathIsOptimal(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd, float expectedPathLength)
		{
			var path = RunAstar(definitionNodeGrid, gridStart, gridEnd);
			Assert.NotNull(path);
			var pathLength = path.GetPathLength();
			Assert.Equal(expectedPathLength, pathLength, 1);
		}

        [Theory, MemberData(nameof(AlgorithmTestCases.PossiblePathTestCases), MemberType = typeof(AlgorithmTestCases))]
		public void FindPath_InitializedNodegrid_PathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var path = RunAstar(definitionNodeGrid, gridStart, gridEnd);
			Assert.NotNull(path);
		}
        
		[Theory, MemberData(nameof(AlgorithmTestCases.NoPossiblePathTestCases), MemberType = typeof(AlgorithmTestCases))]
		public void FindPath_InitializedNodegrid_NoPathFound(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var path = RunAstar(definitionNodeGrid, gridStart, gridEnd);
			Assert.Null(path);
		}

		private WaypointPath RunAstar(DefinitionNodeGrid definitionNodeGrid, Point2 gridStart, Point2 gridEnd)
		{
			var aStarAlgorithm = new AStarAlgorithm(definitionNodeGrid.NodeCount, new EuclideanDistance());

			var start = definitionNodeGrid.NodeGrid.ToIndex(gridStart.X, gridStart.Y);
			var end = definitionNodeGrid.NodeGrid.ToIndex(gridEnd.X, gridEnd.Y);

			var pathfindingNetwork = new AstarNodeNetwork(definitionNodeGrid, new BrushfireClearanceGenerator(definitionNodeGrid, 5));
			var pathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), start, end, PathfindaxCollisionCategory.Cat1);
			var path = aStarAlgorithm.FindPath(pathfindingNetwork, pathRequest);
			return path;
		}
	}
}
