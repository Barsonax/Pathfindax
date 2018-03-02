using Duality.Drawing;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class AstarAlgorithmVisualizer : IVisualizer
	{
		public DrawingState DrawingState { get; }
		public ColorRgba OpenSetColor { get; set; } = ColorRgba.Red;
		public ColorRgba ClosedSetColor { get; set; } = ColorRgba.Green;
		public ColorRgba PathColor { get; set; } = ColorRgba.Blue;

		private readonly AStarAlgorithm _aStarAlgorithm;
		private readonly IDefinitionNodeNetwork _definitionNodeGrid;
		private readonly AstarNodeNetwork _astarNodeNetwork;
		private bool _isRunning;
		private readonly NodeDrawingLayer _nodeDrawingLayer;
		public PathLayer PathLayer { get; }

		public AstarAlgorithmVisualizer(IDefinitionNodeNetwork definitionNodeNetwork)
		{
			_astarNodeNetwork = new AstarNodeNetwork(definitionNodeNetwork);
			_definitionNodeGrid = definitionNodeNetwork;
			_aStarAlgorithm = new AStarAlgorithm(definitionNodeNetwork.NodeCount, new EuclideanDistance());
			DrawingState = new DrawingState(_definitionNodeGrid.NodeArray, definitionNodeNetwork.Transformer);
			_nodeDrawingLayer = new NodeDrawingLayer(definitionNodeNetwork.NodeCount);

			DrawingState.Layers.Add(_nodeDrawingLayer);
			PathLayer = new PathLayer();
			DrawingState.Layers.Add(PathLayer);
		}

		public void Start(float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			var astarNodeArray = _astarNodeNetwork.GetCollisionLayerNetwork(collisionCategory);
			_aStarAlgorithm.Start(astarNodeArray, _definitionNodeGrid.NodeArray, PathLayer.Start, PathLayer.End, neededClearance, collisionCategory);
			_isRunning = true;
		}

		public void Stop()
		{
			_nodeDrawingLayer.Reset();
			PathLayer.Path = null;
			_isRunning = false;
		}

		public bool Step(int stepsToRun = 1)
		{
			if (PathLayer.Path == null && _isRunning)
			{
				if (_aStarAlgorithm.Step(stepsToRun))
				{
					PathLayer.Path = _aStarAlgorithm.GetPath();
				}

				_nodeDrawingLayer.Reset();
				_nodeDrawingLayer.SetNodeState(_aStarAlgorithm.OpenSet, OpenSetColor);
				_nodeDrawingLayer.SetNodeState(_aStarAlgorithm.ClosedSet, ClosedSetColor);
			}
			return PathLayer.Path != null;
		}
	}
}