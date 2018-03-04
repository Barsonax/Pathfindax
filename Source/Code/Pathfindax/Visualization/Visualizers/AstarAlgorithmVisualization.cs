using Duality.Drawing;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class AstarAlgorithmVisualization : IVisualizer
	{
		public int StartIndex
		{
			get => _nodePathVisualization.Start;
			set => _nodePathVisualization.Start = value;
		}

		public int EndIndex
		{
			get => _nodePathVisualization.End;
			set => _nodePathVisualization.End = value;
		}
		public ColorRgba OpenSetColor { get; set; } = ColorRgba.Red;
		public ColorRgba ClosedSetColor { get; set; } = ColorRgba.Green;
		public ColorRgba PathColor { get; set; } = ColorRgba.Blue;

		private readonly AStarAlgorithm _aStarAlgorithm;
		private readonly IDefinitionNodeNetwork _definitionNodeGrid;
		private readonly AstarNodeNetwork _astarNodeNetwork;
		private bool _isRunning;

		private readonly NodeVisualization _nodeVisualization;
		private readonly NodePathVisualization _nodePathVisualization;

		public AstarAlgorithmVisualization(IDefinitionNodeNetwork definitionNodeNetwork)
		{
			_astarNodeNetwork = new AstarNodeNetwork(definitionNodeNetwork);
			_definitionNodeGrid = definitionNodeNetwork;
			_aStarAlgorithm = new AStarAlgorithm(definitionNodeNetwork.NodeCount, new EuclideanDistance());
			_nodeVisualization = new NodeVisualization(definitionNodeNetwork.NodeArray, definitionNodeNetwork.Transformer);

			_nodePathVisualization = new NodePathVisualization
			{
				Transformer = definitionNodeNetwork.Transformer,
				NodeArray = definitionNodeNetwork.NodeArray
			};
		}

		public void Start(float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			var astarNodeArray = _astarNodeNetwork.GetCollisionLayerNetwork(collisionCategory);
			_aStarAlgorithm.Start(astarNodeArray, _definitionNodeGrid.NodeArray, _nodePathVisualization.Start, _nodePathVisualization.End, neededClearance, collisionCategory);
			_isRunning = true;
		}

		public void Stop()
		{
			_nodeVisualization.Reset();
			_nodePathVisualization.Path = null;
			_isRunning = false;
		}

		public bool Step(int stepsToRun = 1)
		{
			if (_nodePathVisualization.Path == null && _isRunning)
			{
				if (_aStarAlgorithm.Step(stepsToRun))
				{
					_nodePathVisualization.Path = _aStarAlgorithm.GetPath();
				}

				_nodeVisualization.Reset();
				_nodeVisualization.SetNodeState(_aStarAlgorithm.OpenSet, OpenSetColor);
				_nodeVisualization.SetNodeState(_aStarAlgorithm.ClosedSet, ClosedSetColor);
			}
			return _nodePathVisualization.Path != null;
		}

		public void Draw(IRenderer renderer)
		{
			_nodeVisualization.Draw(renderer);
			_nodePathVisualization.Draw(renderer);
		}
	}
}