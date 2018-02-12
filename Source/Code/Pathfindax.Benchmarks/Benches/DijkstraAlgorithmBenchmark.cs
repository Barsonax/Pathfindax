using BenchmarkDotNet.Attributes;
using Duality;
using NSubstitute;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

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
			_pathRequest = PathRequest.Create(Substitute.For<IPathfinder<NodePath>>(),
				_definitionNodeGrid.NodeGrid.ToIndex(0, 0), _definitionNodeGrid.NodeGrid.ToIndex(319, 199));
			_nodeNetwork = _dijkstraNodeGrid.GetCollisionLayerNetwork(_pathRequest.CollisionCategory);
		}

		[Benchmark]
		public bool FindPath()
		{
			return _algorithm.FindPath(_nodeNetwork, _definitionNodeGrid.NodeGrid.Array, _pathRequest.PathEnd, _pathRequest.AgentSize, _pathRequest.CollisionCategory);
		}
	}
}
