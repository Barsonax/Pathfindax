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

		[GlobalSetup]
		public void Setup()
		{
			_definitionNodeGrid = new DefinitionNodeGrid(GenerateNodeGridConnections.All, 320, 200, new Vector2(1, 1));
			_astarNodeNetwork = new AstarNodeNetwork(_definitionNodeGrid, new GridClearanceGenerator(_definitionNodeGrid, 1));
			_algorithm = new AStarAlgorithm();
			
		}

		[Benchmark]
		public NodePath FindLongPath()
		{
			return _algorithm.FindPath(_astarNodeNetwork, new PathRequest<NodePath>(_definitionNodeGrid.NodeGrid[0, 0], _definitionNodeGrid.NodeGrid[319, 199]), out var succes);
		}

		[Benchmark]
		public NodePath FindShortPath()
		{
			return _algorithm.FindPath(_astarNodeNetwork, new PathRequest<NodePath>(_definitionNodeGrid.NodeGrid[0, 0], _definitionNodeGrid.NodeGrid[20, 20]), out var succes);
		}
	}
}
