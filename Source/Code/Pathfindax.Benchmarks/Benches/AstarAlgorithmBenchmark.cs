using BenchmarkDotNet.Attributes;
using Duality;
using NSubstitute;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Pathfindax.Benchmarks
{
	[BenchmarkConfig]
	public class AstarAlgorithmBenchmark
	{
		public AStarAlgorithm _algorithm;
		private AstarNodeNetwork _astarNodeNetwork;
		private DefinitionNodeGrid _definitionNodeGrid;

		private PathRequest<IPath> _longPathRequest;
		private PathRequest<IPath> _shortPathRequest;
		private PathRequest<IPath> _veryShortPathRequest;
		private PathRequest<IPath> _zeroLengthPathRequest;

		[GlobalSetup]
		public void Setup()
		{
			_definitionNodeGrid = new DefinitionNodeGrid(GenerateNodeGridConnections.All, 320, 200, new Vector2(1, 1));
			_astarNodeNetwork = new AstarNodeNetwork(_definitionNodeGrid, new BrushfireClearanceGenerator(_definitionNodeGrid, 1));
			_algorithm = new AStarAlgorithm(_definitionNodeGrid.NodeCount, new ManhattanDistance());
			_longPathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), _definitionNodeGrid.NodeGrid.ToIndex(0, 0), _definitionNodeGrid.NodeGrid.ToIndex(319, 199));
			_shortPathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), _definitionNodeGrid.NodeGrid.ToIndex(0, 0), _definitionNodeGrid.NodeGrid.ToIndex(20, 20));
			_veryShortPathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), _definitionNodeGrid.NodeGrid.ToIndex(0, 0), _definitionNodeGrid.NodeGrid.ToIndex(1, 0));
			_zeroLengthPathRequest = PathRequest.Create(Substitute.For<IPathfinder<IPath>>(), _definitionNodeGrid.NodeGrid.ToIndex(0, 0), _definitionNodeGrid.NodeGrid.ToIndex(0, 0));
		}

		[Benchmark]
		public NodePath FindLongPath()
		{
			return _algorithm.FindPath(_astarNodeNetwork, _longPathRequest, out var succes);
		}

		[Benchmark]
		public NodePath FindShortPath()
		{
			return _algorithm.FindPath(_astarNodeNetwork, _shortPathRequest, out var succes);
		}

		[Benchmark]
		public NodePath FindVeryShortPath()
		{
			return _algorithm.FindPath(_astarNodeNetwork, _veryShortPathRequest, out var succes);
		}

		[Benchmark]
		public NodePath FindZeroLengthPath()
		{
			return _algorithm.FindPath(_astarNodeNetwork, _zeroLengthPathRequest, out var succes);
		}
	}
}
