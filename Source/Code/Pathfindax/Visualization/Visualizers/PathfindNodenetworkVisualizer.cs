using System;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class PathfindNodeNetworkVisualizer : IVisualizer
	{
		public PathfindaxCollisionCategory CollisionCategory
		{
			get => DrawingState.CollisionCategory;
			set
			{
				DrawingState.CollisionCategory = value;
				OnChangeCollisionCategory();
			}
		}

		public DrawingState DrawingState { get; }
		private readonly TextDrawingLayer _textDrawingLayer;
		private readonly IPathfindNodeNetwork _pathfindNodeNetwork;

		public PathfindNodeNetworkVisualizer(DefinitionNode[] nodeArray, Transformer transformer, IPathfindNodeNetwork pathfindNodeNetwork)
		{
			DrawingState = new DrawingState(nodeArray, transformer);

			DrawingState.Layers.Add(new NodeDrawingLayer(nodeArray.Length) { VisibleDefault = true });
			DrawingState.Layers.Add(new ConnectionDrawingLayer());
			_textDrawingLayer = new TextDrawingLayer(nodeArray.Length);
			DrawingState.Layers.Add(_textDrawingLayer);
			_pathfindNodeNetwork = pathfindNodeNetwork;
		}

		private void OnChangeCollisionCategory()
		{
			if (DrawingState != null)
			{
				DrawingState.CollisionCategory = CollisionCategory;
				var network = _pathfindNodeNetwork.GetCollisionLayerNetwork(CollisionCategory);
				DrawingState.Reset();
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
}
