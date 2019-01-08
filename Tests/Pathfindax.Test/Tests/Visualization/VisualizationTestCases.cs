using System;
using System.Linq;
using Duality;
using Duality.Drawing;
using Pathfindax.Collections;
using Pathfindax.Factories;
using Pathfindax.Graph;
using System.Collections.Generic;

namespace Pathfindax.Test.Tests.Visualization
{
    public class VisualizationTestCases
    {
        public static IEnumerable<object[]> NodeVisualizationTestCases
        {
            get
            {
                yield return GenerateNodeVisualizationTestCase(3, 3, Vector2.One, Vector2.Zero);
                yield return GenerateNodeVisualizationTestCase(5, 2, Vector2.One, Vector2.Zero);
                yield return GenerateNodeVisualizationTestCase(5, 2, Vector2.One, new Vector2(1f, 3f));
                yield return GenerateNodeVisualizationTestCase(5, 2, new Vector2(0.5f, 0.5f), new Vector2(1f, 3f));
            }
        }

        public static IEnumerable<object[]> AstarAlgorithmVisualizationTestCases
        {
            get
            {
                yield return AstarAlgorithmVisualizationTestCase(3, 3, Vector2.One, Vector2.Zero, new Vector2(0, 0), new Vector2(2, 2));
                yield return AstarAlgorithmVisualizationTestCase(2, 3, Vector2.One, Vector2.Zero, new Vector2(0, 0), new Vector2(1, 2));
                yield return AstarAlgorithmVisualizationTestCase(6, 5, Vector2.One, Vector2.Zero, new Vector2(0, 0), new Vector2(4, 3));
            }
        }

        public static IEnumerable<object[]> WaypointNodeVisualizationTestCases
        {
            get
            {
                yield return GenerateWaypointNodeVisualizationTestCase(3, 3, Vector2.One, Vector2.Zero, new[] { 0, 1, 2 }, ColorRgba.Green, ColorRgba.Grey, ColorRgba.Blue, ColorRgba.Red);
                yield return GenerateWaypointNodeVisualizationTestCase(6, 7, Vector2.One, Vector2.Zero, new[] { 0, 5, 7, 3 }, ColorRgba.TransparentBlack, ColorRgba.Black, ColorRgba.LightGrey, ColorRgba.TransparentWhite);
                yield return GenerateWaypointNodeVisualizationTestCase(2, 1, Vector2.One, Vector2.Zero, new[] { 0, 1 }, ColorRgba.Green, ColorRgba.Green, ColorRgba.LightGrey, ColorRgba.Red);
            }
        }

        public static IEnumerable<object[]> VectorFieldVisualizationTestCases
        {
            get
            {
                yield return GenerateVectorFieldVisualizationTestCase(3, 3, Vector2.One, Vector2.Zero, ColorRgba.Red);
                yield return GenerateVectorFieldVisualizationTestCase(2, 1, Vector2.One, Vector2.Zero, ColorRgba.Grey);
                yield return GenerateVectorFieldVisualizationTestCase(3, 5, Vector2.One, Vector2.Zero, ColorRgba.Blue);
                yield return GenerateVectorFieldVisualizationTestCase(8, 3, Vector2.One, Vector2.Zero, ColorRgba.Black);
            }
        }

        private static object[] GenerateVectorFieldVisualizationTestCase(int width, int height, Vector2 scale, Vector2 position, ColorRgba color)
        {
            var vectors = new Array2D<Vector2>(width, height);
            var random = new Random(width ^ height);
            for (var i = 0; i < vectors.Array.Length; i++)
            {
                vectors[i] = new Vector2(random.Next(), random.Next());
            }
            var transform = new Transformer(scale, position);
            return new object[] { vectors, transform, color };
        }

        private static object[] GenerateWaypointNodeVisualizationTestCase(int width, int height, Vector2 scale, Vector2 position, int[] path, ColorRgba startColor, ColorRgba endColor, ColorRgba nodeColor, ColorRgba lineColor)
        {
            var factory = new DefinitionNodeGridFactory();
            var definitionNodes = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, width, height).Array;
            var transform = new Transformer(scale, position);
            return new object[] { transform, path.Select(i => definitionNodes[i].Position).ToArray(), startColor, endColor, nodeColor, lineColor };
        }

        private static object[] GenerateNodeVisualizationTestCase(int width, int height, Vector2 scale, Vector2 position)
        {
            var factory = new DefinitionNodeGridFactory();
            var definitionNodes = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, width, height).Array;
            var transform = new Transformer(scale, position);
            return new object[] { definitionNodes, transform };
        }

        private static object[] AstarAlgorithmVisualizationTestCase(int width, int height, Vector2 scale, Vector2 position, Vector2 start, Vector2 target)
        {
            var factory = new DefinitionNodeGridFactory();
            var definitionNodes = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, width, height);
            return new object[] { new DefinitionNodeGrid(definitionNodes, scale, position), start, target };
        }
    }
}
