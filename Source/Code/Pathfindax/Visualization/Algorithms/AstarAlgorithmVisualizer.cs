using Duality.Drawing;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization.Algorithms
{
	public class AstarAlgorithmVisualizer
	{
		public int[] Path { get; private set; }
		public NodeNetworkDrawingState NodeNetworkDrawingState { get; }

		public ColorRgba OpenSetColor { get; set; } = ColorRgba.Red.WithAlpha(0.5f);
		public ColorRgba ClosedSetColor { get; set; } = ColorRgba.Green.WithAlpha(0.5f);
		public ColorRgba PathColor { get; set; } = ColorRgba.Blue;

		private readonly AStarAlgorithm _aStarAlgorithm;
		private readonly IDefinitionNodeNetwork _definitionNodeGrid;
		private readonly AstarNodeNetwork _astarNodeNetwork;
		private bool _isRunning;

		public AstarAlgorithmVisualizer(IDefinitionNodeNetwork definitionNodeNetwork, AstarNodeNetwork astarNodeNetwork)
		{
			_astarNodeNetwork = astarNodeNetwork;
			_definitionNodeGrid = definitionNodeNetwork;
			_aStarAlgorithm = new AStarAlgorithm(definitionNodeNetwork.NodeCount, new EuclideanDistance());	
			NodeNetworkDrawingState = new NodeNetworkDrawingState(_definitionNodeGrid);
		}

		public void Start(int startNodeIndex, int targetNodeIndex, float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{ 
			var astarNodeArray = _astarNodeNetwork.GetCollisionLayerNetwork(collisionCategory);
			_aStarAlgorithm.Start(astarNodeArray, _definitionNodeGrid.NodeArray, startNodeIndex, targetNodeIndex, neededClearance, collisionCategory);
			_isRunning = true;
		}

		public void Stop()
		{
			NodeNetworkDrawingState.Reset();
			Path = null;
			_isRunning = false;
		}

		public bool Step(int stepsToRun = 1)
		{
			if (Path == null && _isRunning)
			{
				if (_aStarAlgorithm.Step(stepsToRun))
				{
					Path = _aStarAlgorithm.GetPath();
				}

				NodeNetworkDrawingState.Reset();
				NodeNetworkDrawingState.SetNodeState(_aStarAlgorithm.OpenSet, OpenSetColor);
				NodeNetworkDrawingState.SetNodeState(_aStarAlgorithm.ClosedSet, ClosedSetColor);
				if (Path != null)
				{
					NodeNetworkDrawingState.SetNodeState(Path, PathColor);
				}
			}
			return Path != null;
		}
	}
}
