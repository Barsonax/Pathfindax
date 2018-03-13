using System;
using System.Collections;
using System.Linq;
using Duality;
using Duality.Drawing;
using NUnit.Framework;
using Pathfindax.Collections;
using Pathfindax.Factories;
using Pathfindax.Graph;

namespace Pathfindax.Test.Tests.Visualization
{
	public class VisualizationTestCases
	{
		public static IEnumerable NodeVisualizationTestCases
		{
			get
			{
				yield return GenerateNodeVisualizationTestCase(3, 3, Vector2.One, Vector2.Zero);
				yield return GenerateNodeVisualizationTestCase(5, 2, Vector2.One, Vector2.Zero);
				yield return GenerateNodeVisualizationTestCase(5, 2, Vector2.One, new Vector2(1f, 3f));
				yield return GenerateNodeVisualizationTestCase(5, 2, new Vector2(0.5f, 0.5f), new Vector2(1f, 3f));
			}
		}

		public static IEnumerable AstarAlgorithmVisualizationTestCases
		{
			get
			{
				yield return AstarAlgorithmVisualizationTestCase(3, 3, Vector2.One, Vector2.Zero, new Vector2(0, 0), new Vector2(2, 2));
				yield return AstarAlgorithmVisualizationTestCase(2, 3, Vector2.One, Vector2.Zero, new Vector2(0, 0), new Vector2(1, 2));
				yield return AstarAlgorithmVisualizationTestCase(6, 5, Vector2.One, Vector2.Zero, new Vector2(0, 0), new Vector2(4, 3));
			}
		}

		public static IEnumerable WaypointNodeVisualizationTestCases
		{
			get
			{
				yield return GenerateWaypointNodeVisualizationTestCase(3, 3, Vector2.One, Vector2.Zero, new[] { 0, 1, 2 }, ColorRgba.Green, ColorRgba.Grey, ColorRgba.Blue, ColorRgba.Red);
				yield return GenerateWaypointNodeVisualizationTestCase(6, 7, Vector2.One, Vector2.Zero, new[] { 0, 5, 7, 3 }, ColorRgba.TransparentBlack, ColorRgba.Black, ColorRgba.LightGrey, ColorRgba.TransparentWhite);
				yield return GenerateWaypointNodeVisualizationTestCase(2, 1, Vector2.One, Vector2.Zero, new[] { 0, 1 }, ColorRgba.Green, ColorRgba.Green, ColorRgba.LightGrey, ColorRgba.Red);
			}
		}

		public static IEnumerable VectorFieldVisualizationTestCases
		{
			get
			{
				yield return GenerateVectorFieldVisualizationTestCase(3, 3, Vector2.One, Vector2.Zero, ColorRgba.Red);
				yield return GenerateVectorFieldVisualizationTestCase(2, 1, Vector2.One, Vector2.Zero, ColorRgba.Grey);
				yield return GenerateVectorFieldVisualizationTestCase(3, 5, Vector2.One, Vector2.Zero, ColorRgba.Blue);
				yield return GenerateVectorFieldVisualizationTestCase(8, 3, Vector2.One, Vector2.Zero, ColorRgba.Black);
			}
		}

		private static TestCaseData GenerateVectorFieldVisualizationTestCase(int width, int height, Vector2 scale, Vector2 position, ColorRgba color)
		{
			var vectors = new Array2D<Vector2>(width, height);
			var random = new Random(width ^ height);
			for (var i = 0; i < vectors.Array.Length; i++)
			{
				vectors[i] = new Vector2(random.Next(), random.Next());
			}
			var transform = new Transformer(scale, position);
			return new TestCaseData(vectors, transform, color).SetName($"Width: {width} Height: {height} Scale: {scale} Position: {position}");
		}

		private static TestCaseData GenerateWaypointNodeVisualizationTestCase(int width, int height, Vector2 scale, Vector2 position, int[] path, ColorRgba startColor, ColorRgba endColor, ColorRgba nodeColor, ColorRgba lineColor)
		{
			var factory = new DefinitionNodeGridFactory();
			var definitionNodes = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, width, height).Array;
			var transform = new Transformer(scale, position);
			return new TestCaseData(transform, path.Select(i => definitionNodes[i].Position).ToArray(), startColor, endColor, nodeColor, lineColor).SetName($"Width: {width} Height: {height} Scale: {scale} Position: {position} Path: {string.Join(", ", path)}");
		}

		private static TestCaseData GenerateNodeVisualizationTestCase(int width, int height, Vector2 scale, Vector2 position)
		{
			var factory = new DefinitionNodeGridFactory();
			var definitionNodes = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, width, height).Array;
			var transform = new Transformer(scale, position);
			return new TestCaseData(definitionNodes, transform).SetName($"Width: {width} Height: {height} Scale: {scale} Position: {position}");
		}

		private static TestCaseData AstarAlgorithmVisualizationTestCase(int width, int height, Vector2 scale, Vector2 position, Vector2 start, Vector2 target)
		{
			var factory = new DefinitionNodeGridFactory();
			var definitionNodes = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, width, height);
			return new TestCaseData(new DefinitionNodeGrid(definitionNodes, scale, position), start, target).SetName($"Width: {width} Height: {height} Scale: {scale} Position: {position}");
		}
	}
}
