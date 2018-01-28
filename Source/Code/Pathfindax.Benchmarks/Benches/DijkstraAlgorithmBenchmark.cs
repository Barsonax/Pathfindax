using BenchmarkDotNet.Attributes;
using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Benchmarks
{
	[BenchmarkConfig]
	public class DijkstraAlgorithmBenchmark
	{
		private DijkstraAlgorithm _algorithm;
		private DijkstraNodeGrid _dijkstraNodeGrid;
		private DefinitionNodeGrid _definitionNodeGrid;
		private DijkstraNode[] _nodeNetwork;
		private PathRequest<NodePath> _pathRequest;

		[GlobalSetup]
		public void Setup()
		{
			_definitionNodeGrid = new DefinitionNodeGrid(GenerateNodeGridConnections.All, 320, 200, new Vector2(1, 1));
			_dijkstraNodeGrid = new DijkstraNodeGrid(_definitionNodeGrid, 1);
			_algorithm = new DijkstraAlgorithm(_definitionNodeGrid.NodeCount);
			_pathRequest =
				new PathRequest<NodePath>(_definitionNodeGrid.NodeGrid[0, 0], _definitionNodeGrid.NodeGrid[319, 199]);
			_nodeNetwork = _dijkstraNodeGrid.GetCollisionLayerNetwork(_pathRequest.CollisionCategory);
		}

		[Benchmark]
		public bool FindPath()
		{
			return _algorithm.FindPath(_nodeNetwork, _pathRequest.PathEnd.Index, _pathRequest.AgentSize, _pathRequest.CollisionCategory);
		}
	}
}
