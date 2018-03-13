using System;
using System.Linq;
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


		private readonly AStarAlgorithm _aStarAlgorithm;
		private readonly IDefinitionNodeNetwork _definitionNodeGrid;
		private readonly AstarNodeNetwork _astarNodeNetwork;
		private bool _isRunning;

		public NodeVisualization ClosedSetVisualization { get; }
		public NodeVisualization OpenSetVisualization { get; }
		private readonly WaypointPathVisualization _nodePathVisualization;

		public AstarAlgorithmVisualization(IDefinitionNodeNetwork definitionNodeNetwork)
		{
			_astarNodeNetwork = new AstarNodeNetwork(definitionNodeNetwork);
			_definitionNodeGrid = definitionNodeNetwork;
			_aStarAlgorithm = new AStarAlgorithm(definitionNodeNetwork.NodeCount, new EuclideanDistance());
			OpenSetVisualization = new NodeVisualization(definitionNodeNetwork.NodeArray, definitionNodeNetwork.Transformer) { Color = ColorRgba.Green };
			ClosedSetVisualization = new NodeVisualization(definitionNodeNetwork.NodeArray, definitionNodeNetwork.Transformer) { Color = ColorRgba.Red };

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

		public void SetEnd(Vector2 worldPosition)
		{
			EndIndex = _definitionNodeGrid.GetNodeIndex(worldPosition.X, worldPosition.Y);
			_nodePathVisualization.End = _definitionNodeGrid.NodeArray[EndIndex.Value].Position;
		}

		public void Start(float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			if (StartIndex == null || StartIndex == null) throw new NullReferenceException();
			var astarNodeArray = _astarNodeNetwork.GetCollisionLayerNetwork(collisionCategory);
			_aStarAlgorithm.Start(astarNodeArray, _definitionNodeGrid.NodeArray, StartIndex.Value, EndIndex.Value, neededClearance, collisionCategory);
			ClosedSetVisualization.Nodes = _aStarAlgorithm.ClosedSet;
			OpenSetVisualization.Nodes = _aStarAlgorithm.OpenSet;
			_isRunning = true;
		}

		public void Stop()
		{
			ClosedSetVisualization.Nodes = null;
			OpenSetVisualization.Nodes = null;
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
			OpenSetVisualization.Draw(renderer);
			ClosedSetVisualization.Draw(renderer);
			_nodePathVisualization.Draw(renderer);
		}
	}
}