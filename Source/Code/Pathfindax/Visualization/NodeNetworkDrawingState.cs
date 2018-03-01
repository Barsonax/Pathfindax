using System.Collections.Generic;
using Duality.Drawing;
using Pathfindax.Graph;

namespace Pathfindax.Visualization
{
	public class NodeNetworkDrawingState
	{
		public readonly IDefinitionNodeNetwork DefinitionNodeNetwork;
		public readonly NodeDrawingState[] Nodes;

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

		public void SetState(IEnumerable<int> indexes, ColorRgba color, bool visible = true)
		{
			foreach (var i in indexes)
			{
				ref var node = ref Nodes[i];
				node.Visible = visible;
				node.Color = color;
			}
		}
	}
}