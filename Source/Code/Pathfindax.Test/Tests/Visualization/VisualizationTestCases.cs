using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Duality;
using NUnit.Framework;
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

		private static TestCaseData GenerateNodeVisualizationTestCase(int width, int height, Vector2 scale, Vector2 position)
		{
			var factory = new DefinitionNodeGridFactory();
			var definitionNodes = factory.GeneratePreFilledArray(GenerateNodeGridConnections.All, width, height).Array;
			var transform = new Transformer(scale, position);
			return new TestCaseData(definitionNodes, transform).SetName($"Width: {width} Height: {height} Scale: {scale} Position: {position}");
		}
	}
}
