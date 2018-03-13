using Duality.Drawing;
using NUnit.Framework;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Visualization;

namespace Pathfindax.Test.Tests.Visualization
{
	[TestFixture]
	public class WaypointPathVisualizationTests
	{
		[Test, TestCaseSource(typeof(VisualizationTestCases), nameof(VisualizationTestCases.WaypointNodeVisualizationTestCases))]
		public void Draw(DefinitionNode[] definitionNodes, Transformer transformer, int[] path, ColorRgba startColor, ColorRgba endColor, ColorRgba nodeColor, ColorRgba lineColor)
		{
			var waypointPathVisualization = new WaypointPathVisualization();
			waypointPathVisualization.StartColor = startColor;
			waypointPathVisualization.EndColor = endColor;
			waypointPathVisualization.NodeColor = nodeColor;
			waypointPathVisualization.LineColor = lineColor;
			waypointPathVisualization.SetPath(path, transformer, definitionNodes);
			var renderer = new MockupRenderer();
			waypointPathVisualization.Draw(renderer);

			Assert.AreEqual(path.Length, renderer.FillCircleCalls.Count);
			AssertFillCircleCall(renderer, transformer, definitionNodes, startColor, path, 0);
			for (var i = 1; i < path.Length - 1; i++)
			{
				AssertFillCircleCall(renderer, transformer, definitionNodes, nodeColor, path, i);
			}
			AssertFillCircleCall(renderer, transformer, definitionNodes, endColor, path, path.Length - 1);

			for (var i = 0; i < path.Length - 1; i++)
			{
				var from = transformer.ToWorld(definitionNodes[path[i]].Position);
				var to = transformer.ToWorld(definitionNodes[path[i + 1]].Position);

				Assert.AreEqual(from, renderer.DrawLineCalls[i].from);
				Assert.AreEqual(to, renderer.DrawLineCalls[i].to);
				Assert.AreEqual(lineColor, renderer.DrawLineCalls[i].color);			
			}
		}

		private void AssertFillCircleCall(MockupRenderer renderer, Transformer transformer, DefinitionNode[] definitionNodes, ColorRgba color, int[] path, int i)
		{
			Assert.AreEqual(definitionNodes[path[i]].Position, transformer.ToLocal(renderer.FillCircleCalls[i].position));
			Assert.AreEqual(transformer.Scale.X * 0.25f, renderer.FillCircleCalls[i].radius);
			Assert.AreEqual(color, renderer.FillCircleCalls[i].color);
		}
	}
}
