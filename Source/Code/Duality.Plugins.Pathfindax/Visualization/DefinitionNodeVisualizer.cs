using System.Collections.Generic;
using Duality.Drawing;
using Pathfindax.Graph;

namespace Duality.Plugins.Pathfindax.Visualization
{
	public class DefinitionNodeVisualizer
	{
		private readonly CanvasBuffer _buffer = new CanvasBuffer();

		public void Draw(IDrawDevice device, ColorRgba color, IDefinitionNodeNetwork definitionNodeNetwork, IEnumerable<int> indexes)
		{
			var canvas = new Canvas(device, _buffer);
			canvas.State.ColorTint = color;
			foreach (var i in indexes)
			{
				var definitionNode = definitionNodeNetwork.NodeArray[i];
				var nodeWorldPosition = definitionNodeNetwork.Transformer.ToWorld(definitionNode.Position) - definitionNodeNetwork.Transformer.Scale * 0.5f;
				canvas.FillRect(nodeWorldPosition.X, nodeWorldPosition.Y, definitionNodeNetwork.Transformer.Scale.X, definitionNodeNetwork.Transformer.Scale.Y);
			}
		}
	}
}
