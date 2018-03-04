using System;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class PathfindNodeNetworkVisualizer : IVisualizer
	{
		public PathfindaxCollisionCategory CollisionCategory
		{
			get => _connectionDrawingLayer.CollisionCategory;
			set
			{
				_connectionDrawingLayer.CollisionCategory = value;
				OnChangeCollisionCategory();
			}
		}

		public void Draw(IRenderer renderer)
		{
			_nodeDrawingLayer.Draw(renderer);
			_connectionDrawingLayer.Draw(renderer);
			_textDrawingLayer.Draw(renderer);
		}

		private readonly NodeDrawingLayer _nodeDrawingLayer;
		private readonly ConnectionDrawingLayer _connectionDrawingLayer;
		private readonly TextDrawingLayer _textDrawingLayer;
		private readonly IPathfindNodeNetwork _pathfindNodeNetwork;

		public PathfindNodeNetworkVisualizer(DefinitionNode[] nodeArray, Transformer transformer, IPathfindNodeNetwork pathfindNodeNetwork)
		{
			_nodeDrawingLayer =new NodeDrawingLayer(nodeArray, transformer) { VisibleDefault = true };
			_connectionDrawingLayer = new ConnectionDrawingLayer(nodeArray, transformer);
			_textDrawingLayer = new TextDrawingLayer(nodeArray, transformer);
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
						_textDrawingLayer.Texts[i] = astarNodeNetwork[i].Clearance.ToString();
					}
					break;
				case DijkstraNode[] dijkstraNodeNetwork:
					for (var i = 0; i < dijkstraNodeNetwork.Length; i++)
					{
						_textDrawingLayer.Texts[i] = dijkstraNodeNetwork[i].Clearance.ToString();
					}
					break;
				default:
					throw new NotImplementedException($"No visualization implemented for {network}");
			}
		}
	}
}
