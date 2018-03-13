using System.Linq;
using Duality;
using NUnit.Framework;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Visualization;

namespace Pathfindax.Test.Tests.Visualization
{
	[TestFixture]
	public class AstarAlgorithmVisualizationTests
	{
		[Test, TestCaseSource(typeof(VisualizationTestCases), nameof(VisualizationTestCases.AstarAlgorithmVisualizationTestCases))]
		public void Draw(IDefinitionNodeNetwork definitionNodeNetwork, Vector2 startPosition, Vector2 targetPosition)
		{
			var renderer = new MockupRenderer();
			var astarAlgorithmVisualization = new AstarAlgorithmVisualization(definitionNodeNetwork);

			astarAlgorithmVisualization.SetStart(startPosition);
			renderer.ClearCalls();
			astarAlgorithmVisualization.Draw(renderer);
			Assert.AreEqual(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.StartColor));
			Assert.AreEqual(0, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.TargetColor));
			Assert.AreEqual(0, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.ClosedSetColor || x.color == astarAlgorithmVisualization.OpenSetColor));

			astarAlgorithmVisualization.SetTarget(targetPosition);
			renderer.ClearCalls();
			astarAlgorithmVisualization.Draw(renderer);
			Assert.AreEqual(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.StartColor));
			Assert.AreEqual(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.TargetColor));
			Assert.AreEqual(0, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.ClosedSetColor || x.color == astarAlgorithmVisualization.OpenSetColor));

			astarAlgorithmVisualization.Start(0f, PathfindaxCollisionCategory.None);

			while (!astarAlgorithmVisualization.Step())
			{
				renderer.ClearCalls();
				astarAlgorithmVisualization.Draw(renderer);
				Assert.IsTrue(renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.ClosedSetColor || x.color == astarAlgorithmVisualization.OpenSetColor) > 0);
				Assert.AreEqual(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.StartColor));
				Assert.AreEqual(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.TargetColor));
			}

			renderer.ClearCalls();
			astarAlgorithmVisualization.Draw(renderer);
			Assert.IsTrue(renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.ClosedSetColor || x.color == astarAlgorithmVisualization.OpenSetColor) > 0);
			Assert.IsTrue(renderer.DrawLineCalls.Count > 0);
			Assert.AreEqual(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.StartColor));
			Assert.AreEqual(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.TargetColor));
		}
	}
}
