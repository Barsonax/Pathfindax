using System.Linq;
using Duality;
using Xunit;
using Pathfindax.Graph;
using Pathfindax.Nodes;
using Pathfindax.Visualization;

namespace Pathfindax.Test.Tests.Visualization
{
	
	public class AstarAlgorithmVisualizationTests
	{
        [Theory, MemberData(nameof(VisualizationTestCases.AstarAlgorithmVisualizationTestCases), MemberType = typeof(VisualizationTestCases))]
        public void Draw(IDefinitionNodeNetwork definitionNodeNetwork, Vector2 startPosition, Vector2 targetPosition)
		{
			var renderer = new MockupRenderer();
			var astarAlgorithmVisualization = new AstarAlgorithmVisualization(definitionNodeNetwork);

			astarAlgorithmVisualization.SetStart(startPosition);
			renderer.ClearCalls();
			astarAlgorithmVisualization.Draw(renderer);
			Assert.Equal(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.StartColor));
			Assert.Equal(0, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.TargetColor));
			Assert.Equal(0, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.ClosedSetColor || x.color == astarAlgorithmVisualization.OpenSetColor));

			astarAlgorithmVisualization.SetTarget(targetPosition);
			renderer.ClearCalls();
			astarAlgorithmVisualization.Draw(renderer);
			Assert.Equal(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.StartColor));
			Assert.Equal(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.TargetColor));
			Assert.Equal(0, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.ClosedSetColor || x.color == astarAlgorithmVisualization.OpenSetColor));

			astarAlgorithmVisualization.Start(0f, PathfindaxCollisionCategory.None);

			while (!astarAlgorithmVisualization.Step())
			{
				renderer.ClearCalls();
				astarAlgorithmVisualization.Draw(renderer);
				Assert.True(renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.ClosedSetColor || x.color == astarAlgorithmVisualization.OpenSetColor) > 0);
				Assert.Equal(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.StartColor));
				Assert.Equal(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.TargetColor));
			}

			renderer.ClearCalls();
			astarAlgorithmVisualization.Draw(renderer);
			Assert.True(renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.ClosedSetColor || x.color == astarAlgorithmVisualization.OpenSetColor) > 0);
			Assert.True(renderer.DrawLineCalls.Count > 0);
			Assert.Equal(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.StartColor));
			Assert.Equal(1, renderer.FillCircleCalls.Count(x => x.color == astarAlgorithmVisualization.TargetColor));
		}
	}
}
