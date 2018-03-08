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
	public class NodeConnectionVisualizationTests
	{
		[Test, TestCaseSource(typeof(VisualizationTestCases), nameof(VisualizationTestCases.NodeVisualizationTestCases))]
		public void Draw(DefinitionNode[] definitionNodes, Transformer transform)
		{
			var nodeConnectionVisualization = new NodeConnectionVisualization(definitionNodes, transform);
			var color = new ColorRgba(new Random(definitionNodes.Length).Next());
			nodeConnectionVisualization.Color = color;
			var renderer = new MockupRenderer();
			nodeConnectionVisualization.Draw(renderer);

			Assert.AreEqual(definitionNodes.Select(x => x.Connections.Length).Sum(), renderer.DrawLineCalls.Count);
			for (int i = 0; i < renderer.DrawLineCalls.Count; i++)
			{
				Assert.AreEqual(color, renderer.DrawLineCalls[i].color);
			}
		}
	}
}