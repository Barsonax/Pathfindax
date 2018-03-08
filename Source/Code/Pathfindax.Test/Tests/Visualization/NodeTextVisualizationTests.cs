using System;
using System.Linq;
using Duality.Drawing;
using NUnit.Framework;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Visualization;

namespace Pathfindax.Test.Tests.Visualization
{
	[TestFixture]
	public class NodeTextVisualizationTests
	{
		[Test, TestCaseSource(typeof(VisualizationTestCases), nameof(VisualizationTestCases.NodeVisualizationTestCases))]
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

			Assert.AreEqual(texts.Count(x => !string.IsNullOrEmpty(x)), renderer.DrawTextCalls.Count);
			for (int i = 0; i < renderer.DrawLineCalls.Count; i++)
			{
				Assert.AreEqual(color, renderer.DrawTextCalls[i].color);
				Assert.AreEqual(texts[i], renderer.DrawTextCalls[i].text);
			}
		}
	}
}
