using System.Collections.Generic;
using Duality.Drawing;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class NodeNetworkDrawingState
	{
		public bool DrawConnections { get; set; }
		public ColorRgba ConnectionColor { get; set; } = new ColorRgba(199, 21, 133);
		public PathfindaxCollisionCategory CollisionCategory { get; set; }

		public IDefinitionNodeNetwork DefinitionNodeNetwork
		{
			get => _definitionNodeNetwork;
			set
			{
				_definitionNodeNetwork = value;
				if (Nodes.Length != _definitionNodeNetwork.NodeCount)
				{
					Nodes = new NodeDrawingState[_definitionNodeNetwork.NodeCount];
				}
			}
		}

		public NodeDrawingState[] Nodes { get; private set }
		private IDefinitionNodeNetwork _definitionNodeNetwork;

		public NodeNetworkDrawingState(IDefinitionNodeNetwork definitionNodeNetwork)
		{
			DefinitionNodeNetwork = definitionNodeNetwork;
			Nodes = new NodeDrawingState[definitionNodeNetwork.NodeCount];
		}

		public void Reset()
		{
			for (var i = 0; i < Nodes.Length; i++)
			{
				Nodes[i] = new NodeDrawingState();
			}
		}

		public void SetNodeState(IEnumerable<int> indexes, ColorRgba color, bool visible = true)
		{
			foreach (var i in indexes)
			{
				SetNodeState(i, color, visible);
			}
		}

		public void SetNodeState(int index, ColorRgba color, bool visible = true)
		{
			ref var node = ref Nodes[index];
			node.Visible = visible;
			node.Color = color;
		}
	}
}