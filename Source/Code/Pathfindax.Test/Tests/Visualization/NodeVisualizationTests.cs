using System;
using System.Linq;
using Duality.Drawing;
using Xunit;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Visualization;

namespace Pathfindax.Test.Tests.Visualization
{
	
	public class NodeVisualizationTests
	{
        [Theory, MemberData(nameof(VisualizationTestCases.NodeVisualizationTestCases), MemberType = typeof(VisualizationTestCases))]
        public void Draw(DefinitionNode[] definitionNodes, Transformer transform)
		{
			var nodeVisualization = new NodeVisualization(definitionNodes, transform) { Nodes = definitionNodes.Select((node, i) => i) };
			var random = new Random(definitionNodes.Length);
			var color = new ColorRgba(random.Next());
			nodeVisualization.Color = color;
			var renderer = new MockupRenderer();
			nodeVisualization.Draw(renderer);

			Assert.Equal(definitionNodes.Length, renderer.FillCircleCalls.Count);
			for (int i = 0; i < definitionNodes.Length; i++)
			{
				Assert.Equal(definitionNodes[i].Position, transform.ToLocal(renderer.FillCircleCalls[i].position));
				Assert.Equal(transform.Scale.X * 0.25f, renderer.FillCircleCalls[i].radius);
				Assert.Equal(color, renderer.FillCircleCalls[i].color);
			}
		}
	}
}