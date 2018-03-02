using Duality.Drawing;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Visualization;

namespace Duality.Plugins.Pathfindax.Visualization
{
	public class DualityNodeNetworkVisualizer
	{
		private readonly CanvasBuffer _buffer = new CanvasBuffer();

		public void Draw(IDrawDevice device, IVisualizer visualizer)
		{
			var canvas = new Canvas(device, _buffer);
			var drawingState = visualizer.DrawingState;
			var nodeArray = drawingState.NodeArray;
			var transformer = drawingState.Transformer;
			canvas.State.ZOffset = drawingState.ZOffset;
			foreach (var drawingLayer in drawingState.Layers)
			{
				switch (drawingLayer)
				{
					case ConnectionDrawingLayer connectionDrawingLayer:
						canvas.State.ColorTint = connectionDrawingLayer.Color;
						for (var i = 0; i < nodeArray.Length; i++)
						{
							var definitionNode = nodeArray[i];
							var nodeWorldPosition = transformer.ToWorld(definitionNode.Position);
							DrawNodeConnections(canvas, transformer, nodeWorldPosition, definitionNode.Connections, nodeArray, drawingState);
						}
						break;
					case NodeDrawingLayer nodeDrawingLayer:
						for (var i = 0; i < nodeArray.Length; i++)
						{
							if (!nodeDrawingLayer.Nodes[i].Visible) continue;
							canvas.State.ColorTint = nodeDrawingLayer.Nodes[i].Color;
							DrawNode(canvas, transformer, nodeArray[i]);
						}
						break;
					case TextDrawingLayer textDrawingLayer:
						canvas.State.ColorTint = textDrawingLayer.Color;
						for (var i = 0; i < nodeArray.Length; i++)
						{
							if (string.IsNullOrEmpty(textDrawingLayer.Texts[i])) continue;
							var definitionNode = nodeArray[i];
							var nodeWorldPosition = transformer.ToWorld(definitionNode.Position);
							DrawNodeText(canvas, nodeWorldPosition, textDrawingLayer.Texts[i]);
						}
						break;
					case VectorLayer vectorLayer:
						canvas.State.ColorTint = vectorLayer.Color;
						for (var i = 0; i < vectorLayer.Vectors.Length; i++)
						{
							var vector = vectorLayer.Vectors[i] * 0.5f;
							var definitionNode = nodeArray[i];
							var nodeWorldPosition = transformer.ToWorld(definitionNode.Position);
							canvas.DrawLine(nodeWorldPosition.X, nodeWorldPosition.Y, nodeWorldPosition.X + vector.X, nodeWorldPosition.Y + vector.Y);
						}
						break;
					case PathLayer pathLayer:
						if (pathLayer.Path != null)
						{
							canvas.State.ColorTint = pathLayer.LineColor;
							for (var i = 0; i < pathLayer.Path.Length - 1; i++)
							{
								var from = transformer.ToWorld(nodeArray[pathLayer.Path[i]].Position);
								var to = transformer.ToWorld(nodeArray[pathLayer.Path[i + 1]].Position);
								canvas.DrawLine(from.X, from.Y, to.X, to.Y);
							}

							canvas.State.ColorTint = pathLayer.NodeColor;
							for (var i = 1; i < pathLayer.Path.Length - 1; i++)
							{
								DrawNode(canvas, transformer, nodeArray[pathLayer.Path[i]]);
							}
						}

						if (pathLayer.Start != -1)
						{
							canvas.State.ColorTint = pathLayer.StartColor;
							DrawNode(canvas, transformer, nodeArray[pathLayer.Start]);
						}

						if (pathLayer.End != -1)
						{
							canvas.State.ColorTint = pathLayer.EndColor;
							DrawNode(canvas, transformer, nodeArray[pathLayer.End]);
						}
						break;
				}
			}
		}

		private void DrawNode(Canvas canvas, Transformer transformer, in DefinitionNode definitionNode)
		{
			var nodeWorldPosition = transformer.ToWorld(definitionNode.Position);
			canvas.FillCircle(nodeWorldPosition.X, nodeWorldPosition.Y, transformer.Scale.X * 0.25f);
		}

		private void DrawNodeConnections(Canvas canvas, Transformer transformer, Vector2 nodeWorldPosition, NodeConnection[] nodeConnections, DefinitionNode[] definitionNodes, DrawingState drawingState)
		{
			foreach (var connection in nodeConnections)
			{
				if ((connection.CollisionCategory & drawingState.CollisionCategory) != 0) continue;
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
