using Duality.Drawing;
using Pathfindax.Graph;
using Pathfindax.Nodes;
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
				if (nodeNetworkDrawingState.DrawConnections)
					DrawNodeConnections(canvas, transformer, nodeWorldPosition, definitionNode.Connections, nodeArray, nodeNetworkDrawingState);
				DrawNodeText(canvas, nodeWorldPosition, node.Text);
			}
		}

		private void DrawNodeConnections(Canvas canvas, Transformer transformer, Vector2 nodeWorldPosition, NodeConnection[] nodeConnections, DefinitionNode[] definitionNodes, NodeNetworkDrawingState nodeNetworkDrawingState)
		{
			canvas.State.ColorTint = nodeNetworkDrawingState.ConnectionColor;
			foreach (var connection in nodeConnections)
			{
				if ((connection.CollisionCategory & nodeNetworkDrawingState.CollisionCategory) != 0) continue;
				ref var toNode = ref definitionNodes[connection.To];
				var vector = (transformer.ToWorld(toNode.Position) - nodeWorldPosition) * 0.5f; //Times 0.5f so we can see the connections in both directions.
				canvas.DrawLine(nodeWorldPosition.X, nodeWorldPosition.Y, nodeWorldPosition.X + vector.X, nodeWorldPosition.Y + vector.Y);
			}
		}

		private void DrawNodeText(Canvas canvas, Vector2 nodeWorldPosition, string text)
		{
			if (!string.IsNullOrEmpty(text))
			{
				canvas.State.ColorTint = ColorRgba.Black;
				canvas.DrawText(text, nodeWorldPosition.X, nodeWorldPosition.Y, -1f, Alignment.Center);
			}
		}
	}
}
