using System;
using Duality.Drawing;
using NUnit.Framework;
using Pathfindax.Nodes;
using Pathfindax.Visualization;

namespace Pathfindax.Test.Tests.Visualization
{
	[TestFixture]
	public class NodePathVisualizationTest
	{
		//[Test]
		//public void foo(DefinitionNode[] definitionNodes, int[] path)
		//{
		//	var nodePathVisualization = new NodePathVisualization();
		//	nodePathVisualization.Path = path;
		//	nodePathVisualization.StartColor = ColorRgba.Grey;
		//	nodePathVisualization.EndColor = ColorRgba.LightGrey; 
		//	var renderer = new MockupRenderer();
		//	nodePathVisualization.Draw(renderer);

		//	Assert.AreEqual(definitionNodes.Length, renderer.FillCircleCalls.Count);
		//	for (int i = 0; i < definitionNodes.Length; i++)
		//	{
		//		Assert.AreEqual(definitionNodes[i].Position, transform.ToLocal(renderer.FillCircleCalls[i].position));
		//		Assert.AreEqual(transform.Scale.X * 0.25f, renderer.FillCircleCalls[i].radius);
		//		Assert.AreEqual(color, renderer.FillCircleCalls[i].color);
		//	}
		//}
	}
}
