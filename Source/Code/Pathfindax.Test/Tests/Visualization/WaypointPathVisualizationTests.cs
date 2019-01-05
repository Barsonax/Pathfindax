using Duality;
using Duality.Drawing;
using Pathfindax.Graph;
using Pathfindax.Visualization;
using Xunit;

namespace Pathfindax.Test.Tests.Visualization
{
	public class WaypointPathVisualizationTests
	{
        [MemberData(nameof(VisualizationTestCases.WaypointNodeVisualizationTestCases), MemberType = typeof(VisualizationTestCases))]
        [Theory]
		public void Draw(Transformer transformer, Vector2[] path, ColorRgba startColor, ColorRgba endColor, ColorRgba nodeColor, ColorRgba lineColor)
		{
			var waypointPathVisualization = new WaypointPathVisualization();
			waypointPathVisualization.StartColor = startColor;
			waypointPathVisualization.TargetColor = endColor;
			waypointPathVisualization.WaypointColor = nodeColor;
			waypointPathVisualization.LineColor = lineColor;
			waypointPathVisualization.SetPath(path, transformer);
			var renderer = new MockupRenderer();
			waypointPathVisualization.Draw(renderer);

			Assert.Equal(path.Length, renderer.FillCircleCalls.Count);
			AssertFillCircleCall(renderer, transformer, startColor, path, 0);
			for (var i = 1; i < path.Length - 1; i++)
			{
				AssertFillCircleCall(renderer, transformer,  nodeColor, path, i);
			}
			AssertFillCircleCall(renderer, transformer, endColor, path, path.Length - 1);

			for (var i = 0; i < path.Length - 1; i++)
			{
				var from = transformer.ToWorld(path[i]);
				var to = transformer.ToWorld(path[i + 1]);

				Assert.Equal(from, renderer.DrawLineCalls[i].from);
				Assert.Equal(to, renderer.DrawLineCalls[i].to);
				Assert.Equal(lineColor, renderer.DrawLineCalls[i].color);			
			}
		}

		private void AssertFillCircleCall(MockupRenderer renderer, Transformer transformer, ColorRgba color, Vector2[] path, int i)
		{
			Assert.Equal(path[i], transformer.ToLocal(renderer.FillCircleCalls[i].position));
			Assert.Equal(transformer.Scale.X * 0.25f, renderer.FillCircleCalls[i].radius);
			Assert.Equal(color, renderer.FillCircleCalls[i].color);
		}
	}
}
