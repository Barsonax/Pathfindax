using Duality.Drawing;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class AstarAlgorithmVisualizer : IVisualizer
	{
		public int StartIndex
		{
			get => _pathLayer.Start;
			set => _pathLayer.Start = value;
		}

		public int EndIndex
		{
			get => _pathLayer.End;
			set => _pathLayer.End = value;
		}
		public ColorRgba OpenSetColor { get; set; } = ColorRgba.Red;
		public ColorRgba ClosedSetColor { get; set; } = ColorRgba.Green;
		public ColorRgba PathColor { get; set; } = ColorRgba.Blue;

		private readonly AStarAlgorithm _aStarAlgorithm;
		private readonly IDefinitionNodeNetwork _definitionNodeGrid;
		private readonly AstarNodeNetwork _astarNodeNetwork;
		private bool _isRunning;

		private readonly NodeDrawingLayer _nodeDrawingLayer;
		private readonly PathLayer _pathLayer;

		public AstarAlgorithmVisualizer(IDefinitionNodeNetwork definitionNodeNetwork)
		{
			_astarNodeNetwork = new AstarNodeNetwork(definitionNodeNetwork);
			_definitionNodeGrid = definitionNodeNetwork;
			_aStarAlgorithm = new AStarAlgorithm(definitionNodeNetwork.NodeCount, new EuclideanDistance());
			_nodeDrawingLayer = new NodeDrawingLayer(definitionNodeNetwork.NodeArray, definitionNodeNetwork.Transformer);

			_pathLayer = new PathLayer
			{
				Transformer = definitionNodeNetwork.Transformer,
				NodeArray = definitionNodeNetwork.NodeArray
			};
		}

		public void Start(float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			var astarNodeArray = _astarNodeNetwork.GetCollisionLayerNetwork(collisionCategory);
			_aStarAlgorithm.Start(astarNodeArray, _definitionNodeGrid.NodeArray, _pathLayer.Start, _pathLayer.End, neededClearance, collisionCategory);
			_isRunning = true;
		}

		public void Stop()
		{
			_nodeDrawingLayer.Reset();
			_pathLayer.Path = null;
			_isRunning = false;
		}

		public bool Step(int stepsToRun = 1)
		{
			if (_pathLayer.Path == null && _isRunning)
			{
				if (_aStarAlgorithm.Step(stepsToRun))
				{
					_pathLayer.Path = _aStarAlgorithm.GetPath();
				}

				_nodeDrawingLayer.Reset();
				_nodeDrawingLayer.SetNodeState(_aStarAlgorithm.OpenSet, OpenSetColor);
				_nodeDrawingLayer.SetNodeState(_aStarAlgorithm.ClosedSet, ClosedSetColor);
			}
			return _pathLayer.Path != null;
		}

		public void Draw(IRenderer renderer)
		{
			_nodeDrawingLayer.Draw(renderer);
			_pathLayer.Draw(renderer);
		}
	}
}