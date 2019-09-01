using Duality;
using Duality.Drawing;
using Xunit;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Visualization;

namespace Pathfindax.Test.Tests.Visualization
{
	
	public class VectorFieldVisualizationTests
	{
        [Theory, MemberData(nameof(VisualizationTestCases.VectorFieldVisualizationTestCases), MemberType = typeof(VisualizationTestCases))]
        public void Draw(Array2D<Vector2> vectors, Transformer transformer, ColorRgba color)
		{
			var vectorFieldVisualization = new VectorFieldVisualization();
			vectorFieldVisualization.Vectors = vectors;
			vectorFieldVisualization.Transformer = transformer;
			vectorFieldVisualization.Color = color;

			var renderer = new MockupRenderer();
			vectorFieldVisualization.Draw(renderer);

			Assert.Equal(vectors.Length, renderer.DrawLineCalls.Count);
			for (var i = 0; i < vectors.Length; i++)
			{
				var drawnVector = renderer.DrawLineCalls[i].to - renderer.DrawLineCalls[i].from;
				var expectedVector = vectors.Array[i] * 0.5f * transformer.Scale.X;
				Assert.Equal(expectedVector, drawnVector);
			}
		}
	}
}
