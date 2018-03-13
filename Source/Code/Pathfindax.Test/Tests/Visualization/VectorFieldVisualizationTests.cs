using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Duality;
using Duality.Drawing;
using NUnit.Framework;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Visualization;

namespace Pathfindax.Test.Tests.Visualization
{
	[TestFixture]
	public class VectorFieldVisualizationTests
	{
		[Test, TestCaseSource(typeof(VisualizationTestCases), nameof(VisualizationTestCases.VectorFieldVisualizationTestCases))]
		public void Draw(Array2D<Vector2> vectors, Transformer transformer, ColorRgba color)
		{
			var vectorFieldVisualization = new VectorFieldVisualization();
			vectorFieldVisualization.Vectors = vectors;
			vectorFieldVisualization.Transformer = transformer;
			vectorFieldVisualization.Color = color;

			var renderer = new MockupRenderer();
			vectorFieldVisualization.Draw(renderer);

			Assert.AreEqual(vectors.Length, renderer.DrawLineCalls.Count);
			for (var i = 0; i < vectors.Length; i++)
			{
				var drawnVector = renderer.DrawLineCalls[i].to - renderer.DrawLineCalls[i].from;
				var expectedVector = vectors.Array[i] * 0.5f * transformer.Scale.X;
				Assert.AreEqual(expectedVector, drawnVector);
			}
		}
	}
}
