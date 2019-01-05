using System;
using System.Linq;
using Duality.Drawing;
using Xunit;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Visualization;

namespace Pathfindax.Test.Tests.Visualization
{
	
	public class NodeTextVisualizationTests
	{
        [Theory, MemberData(nameof(VisualizationTestCases.NodeVisualizationTestCases), MemberType = typeof(VisualizationTestCases))]
        public void Draw(DefinitionNode[] definitionNodes, Transformer transform)
		{
			var nodeTextVisualization = new NodeTextVisualization(definitionNodes, transform);
			var random = new Random(definitionNodes.Length);
			var color = new ColorRgba(random.Next());
			nodeTextVisualization.Color = color;

			var texts = new string[definitionNodes.Length];
			for (int i = 0; i < definitionNodes.Length; i++)
			{
				if (i % 2 == 0) continue;
				string text;
				if (i % 3 == 0)
				{
					text = random.Next().ToString();
				}
				else
				{
					text = "";
				}
				texts[i] = text;
				nodeTextVisualization.Texts[i] = text;
			}
			var renderer = new MockupRenderer();
			nodeTextVisualization.Draw(renderer);

			Assert.Equal(texts.Count(x => !string.IsNullOrEmpty(x)), renderer.DrawTextCalls.Count);
			for (int i = 0; i < renderer.DrawLineCalls.Count; i++)
			{
				Assert.Equal(color, renderer.DrawTextCalls[i].color);
				Assert.Equal(texts[i], renderer.DrawTextCalls[i].text);
			}
		}
	}
}
