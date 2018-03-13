using System;
using Duality;
using Duality.Drawing;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class AstarAlgorithmVisualization : IVisualizer
	{
		public int? StartIndex { get; private set; }
		public int? EndIndex { get; private set; }

		public ColorRgba ClosedSetColor
		{
			get => _closedSetVisualization.Color;
			set => _closedSetVisualization.Color = value;
		}

		public ColorRgba OpenSetColor
		{
			get => _openSetVisualization.Color;
			set => _openSetVisualization.Color = value;
		}

		public ColorRgba StartColor
		{
			get => _nodePathVisualization.StartColor;
			set => _nodePathVisualization.StartColor = value;
		}

		public ColorRgba TargetColor
		{
			get => _nodePathVisualization.TargetColor;
			set => _nodePathVisualization.TargetColor = value;
		}

		public ColorRgba WaypointColor
		{
			get => _nodePathVisualization.WaypointColor;
			set => _nodePathVisualization.WaypointColor = value;
		}

		private readonly AStarAlgorithm _aStarAlgorithm;
		private readonly IDefinitionNodeNetwork _definitionNodeGrid;
		private readonly AstarNodeNetwork _astarNodeNetwork;
		private bool _isRunning;

		private readonly NodeVisualization _closedSetVisualization;
		private readonly NodeVisualization _openSetVisualization;
		private readonly WaypointPathVisualization _nodePathVisualization;

		public AstarAlgorithmVisualization(IDefinitionNodeNetwork definitionNodeNetwork)
		{
			_astarNodeNetwork = new AstarNodeNetwork(definitionNodeNetwork);
			_definitionNodeGrid = definitionNodeNetwork;
			_aStarAlgorithm = new AStarAlgorithm(definitionNodeNetwork.NodeCount, new EuclideanDistance());
			_openSetVisualization = new NodeVisualization(definitionNodeNetwork.NodeArray, definitionNodeNetwork.Transformer) { Color = ColorRgba.Green };
			_closedSetVisualization = new NodeVisualization(definitionNodeNetwork.NodeArray, definitionNodeNetwork.Transformer) { Color = ColorRgba.Red };

			_nodePathVisualization = new WaypointPathVisualization
			{
				Transformer = definitionNodeNetwork.Transformer,
			};
		}

		public void SetStart(Vector2 worldPosition)
		{
			Stop();
			StartIndex = _definitionNodeGrid.GetNodeIndex(worldPosition.X, worldPosition.Y);
			_nodePathVisualization.Start = _definitionNodeGrid.NodeArray[StartIndex.Value].Position;
		}

		public void SetTarget(Vector2 worldPosition)
		{
			EndIndex = _definitionNodeGrid.GetNodeIndex(worldPosition.X, worldPosition.Y);
			_nodePathVisualization.End = _definitionNodeGrid.NodeArray[EndIndex.Value].Position;
		}

		public void Start(float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			if (StartIndex == null || EndIndex == null) throw new NullReferenceException();
			var astarNodeArray = _astarNodeNetwork.GetCollisionLayerNetwork(collisionCategory);
			_aStarAlgorithm.Start(astarNodeArray, _definitionNodeGrid.NodeArray, StartIndex.Value, EndIndex.Value, neededClearance, collisionCategory);
			_closedSetVisualization.Nodes = _aStarAlgorithm.ClosedSet;
			_openSetVisualization.Nodes = _aStarAlgorithm.OpenSet;
			_isRunning = true;
		}

		public void Stop()
		{
			_closedSetVisualization.Nodes = null;
			_openSetVisualization.Nodes = null;
			_nodePathVisualization.Path = null;
			_nodePathVisualization.Start = null;
			_nodePathVisualization.End = null;
			StartIndex = null;
			EndIndex = null;
			_isRunning = false;
		}

		public bool Step(int stepsToRun = 1)
		{
			if (_nodePathVisualization.Path == null && _isRunning)
			{
				if (_aStarAlgorithm.Step(stepsToRun))
				{
					var path = _aStarAlgorithm.GetPath();
					var waypointPath = new Vector2[path.Length];
					for (int i = 0; i < path.Length; i++)
					{
						waypointPath[i] = _definitionNodeGrid.NodeArray[path[i]].Position;
					}

					_nodePathVisualization.Path = waypointPath;
				}
			}
			return _nodePathVisualization.Path != null;
		}

		public void Draw(IRenderer renderer)
		{
			if (_isRunning)
			{
				_openSetVisualization.Draw(renderer);
				_closedSetVisualization.Draw(renderer);
			}

			_nodePathVisualization.Draw(renderer);
		}
	}
}