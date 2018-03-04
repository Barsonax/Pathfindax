using System;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class PathfindNodeNetworkVisualization : IVisualizer
	{
		public PathfindaxCollisionCategory CollisionCategory
		{
			get => _nodeConnectionVisualization.CollisionCategory;
			set
			{
				_nodeConnectionVisualization.CollisionCategory = value;
				OnChangeCollisionCategory();
			}
		}

		public void Draw(IRenderer renderer)
		{
			_nodeVisualization.Draw(renderer);
			_nodeConnectionVisualization.Draw(renderer);
			_nodeTextVisualization.Draw(renderer);
		}

		private readonly NodeVisualization _nodeVisualization;
		private readonly NodeConnectionVisualization _nodeConnectionVisualization;
		private readonly NodeTextVisualization _nodeTextVisualization;
		private readonly IPathfindNodeNetwork _pathfindNodeNetwork;

		public PathfindNodeNetworkVisualization(DefinitionNode[] nodeArray, Transformer transformer, IPathfindNodeNetwork pathfindNodeNetwork)
		{
			_nodeVisualization =new NodeVisualization(nodeArray, transformer) { VisibleDefault = true };
			_nodeConnectionVisualization = new NodeConnectionVisualization(nodeArray, transformer);
			_nodeTextVisualization = new NodeTextVisualization(nodeArray, transformer);
			_pathfindNodeNetwork = pathfindNodeNetwork;
		}

		private void OnChangeCollisionCategory()
		{
			var network = _pathfindNodeNetwork.GetCollisionLayerNetwork(CollisionCategory);

			switch (network)
			{
				case AstarNode[] astarNodeNetwork:
					for (var i = 0; i < astarNodeNetwork.Length; i++)
					{
						_nodeTextVisualization.Texts[i] = astarNodeNetwork[i].Clearance.ToString();
					}
					break;
				case DijkstraNode[] dijkstraNodeNetwork:
					for (var i = 0; i < dijkstraNodeNetwork.Length; i++)
					{
						_nodeTextVisualization.Texts[i] = dijkstraNodeNetwork[i].Clearance.ToString();
					}
					break;
				default:
					throw new NotImplementedException($"No visualization implemented for {network}");
			}
		}
	}
}
