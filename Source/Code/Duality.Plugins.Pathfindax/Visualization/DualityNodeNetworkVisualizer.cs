using Duality.Drawing;
using Pathfindax.Visualization;

namespace Duality.Plugins.Pathfindax.Visualization
{
	public class DualityNodeNetworkVisualizer
	{
		private readonly CanvasBuffer _buffer = new CanvasBuffer();

		public void Draw(IDrawDevice device, NodeNetworkDrawingState nodeNetworkDrawingState)
		{
			var canvas = new Canvas(device, _buffer);
			var nodeArray = nodeNetworkDrawingState.DefinitionNodeNetwork.NodeArray;
			var transformer = nodeNetworkDrawingState.DefinitionNodeNetwork.Transformer;
			for (var i = 0; i < nodeNetworkDrawingState.Nodes.Length; i++)
			{
				ref var node = ref nodeNetworkDrawingState.Nodes[i];
				if (!node.Visible) continue;
				canvas.State.ColorTint = node.Color;
				var definitionNode = nodeArray[i];
				var nodeWorldPosition = transformer.ToWorld(definitionNode.Position) - transformer.Scale * 0.5f;
				canvas.FillRect(nodeWorldPosition.X, nodeWorldPosition.Y, transformer.Scale.X, transformer.Scale.Y);
			}
		}
	}
}
