using Duality.Drawing;
using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class AstarAlgorithmVisualization : IVisualizer
	{
		private readonly AStarAlgorithm _aStarAlgorithm;
		private readonly IDefinitionNodeNetwork _definitionNodeGrid;
		private readonly AstarNodeNetwork _astarNodeNetwork;
		private bool _isRunning;

		public NodeVisualization ClosedSetVisualization { get; }
		public NodeVisualization OpenSetVisualization { get; }
		public NodePathVisualization NodePathVisualization { get; }

		public AstarAlgorithmVisualization(IDefinitionNodeNetwork definitionNodeNetwork)
		{
			_astarNodeNetwork = new AstarNodeNetwork(definitionNodeNetwork);
			_definitionNodeGrid = definitionNodeNetwork;
			_aStarAlgorithm = new AStarAlgorithm(definitionNodeNetwork.NodeCount, new EuclideanDistance());
			OpenSetVisualization = new NodeVisualization(definitionNodeNetwork.NodeArray, definitionNodeNetwork.Transformer) { Color = ColorRgba.Green };
			ClosedSetVisualization = new NodeVisualization(definitionNodeNetwork.NodeArray, definitionNodeNetwork.Transformer) { Color = ColorRgba.Red };

			NodePathVisualization = new NodePathVisualization
			{
				Transformer = definitionNodeNetwork.Transformer,
				NodeArray = definitionNodeNetwork.NodeArray
			};
		}

		public void Start(float neededClearance, PathfindaxCollisionCategory collisionCategory)
		{
			var astarNodeArray = _astarNodeNetwork.GetCollisionLayerNetwork(collisionCategory);
			_aStarAlgorithm.Start(astarNodeArray, _definitionNodeGrid.NodeArray, NodePathVisualization.Start, NodePathVisualization.End, neededClearance, collisionCategory);
			ClosedSetVisualization.Nodes = _aStarAlgorithm.ClosedSet;
			OpenSetVisualization.Nodes = _aStarAlgorithm.OpenSet;
			_isRunning = true;
		}

		public void Stop()
		{
			ClosedSetVisualization.Nodes = null;
			OpenSetVisualization.Nodes = null;
			NodePathVisualization.Path = null;
			NodePathVisualization.Start = -1;
			NodePathVisualization.End = -1;
			_isRunning = false;
		}

		public bool Step(int stepsToRun = 1)
		{
			if (NodePathVisualization.Path == null && _isRunning)
			{
				if (_aStarAlgorithm.Step(stepsToRun))
				{
					NodePathVisualization.Path = _aStarAlgorithm.GetPath();
				}
			}
			return NodePathVisualization.Path != null;
		}

		public void Draw(IRenderer renderer)
		{
			OpenSetVisualization.Draw(renderer);
			ClosedSetVisualization.Draw(renderer);
			NodePathVisualization.Draw(renderer);
		}
	}
}