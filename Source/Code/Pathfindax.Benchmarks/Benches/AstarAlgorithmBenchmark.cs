using BenchmarkDotNet.Attributes;
using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Benchmarks
{
	[BenchmarkConfig]
	public class AstarAlgorithmBenchmark
	{
		private AStarAlgorithm _algorithm;
		private AstarNodeNetwork _astarNodeNetwork;
		private DefinitionNodeGrid _definitionNodeGrid;

		private PathRequest<NodePath> _longPathRequest;
		private PathRequest<NodePath> _shortPathRequest;
		private PathRequest<NodePath> _veryShortPathRequest;		
		private PathRequest<NodePath> _zeroLengthPathRequest;

		[GlobalSetup]
		public void Setup()
		{
			_definitionNodeGrid = new DefinitionNodeGrid(GenerateNodeGridConnections.All, 320, 200, new Vector2(1, 1));
			_astarNodeNetwork = new AstarNodeNetwork(_definitionNodeGrid, new GridClearanceGenerator(_definitionNodeGrid, 1));
			_algorithm = new AStarAlgorithm(_definitionNodeGrid.NodeCount);
			_longPathRequest =
				new PathRequest<NodePath>(_definitionNodeGrid.NodeGrid[0, 0], _definitionNodeGrid.NodeGrid[319, 199]);
			_shortPathRequest =
				new PathRequest<NodePath>(_definitionNodeGrid.NodeGrid[0, 0], _definitionNodeGrid.NodeGrid[20, 20]);
			_veryShortPathRequest =
				new PathRequest<NodePath>(_definitionNodeGrid.NodeGrid[0, 0], _definitionNodeGrid.NodeGrid[1, 0]);
			_zeroLengthPathRequest =
				new PathRequest<NodePath>(_definitionNodeGrid.NodeGrid[0, 0], _definitionNodeGrid.NodeGrid[0, 0]);
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
