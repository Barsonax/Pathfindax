using System.Collections.Generic;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Visualization
{
	public class DrawingState
	{
		public int ZOffset { get; } = -5;
		public DefinitionNode[] NodeArray { get; }
		public Transformer Transformer { get; }
		public List<IDrawingLayer> Layers = new List<IDrawingLayer>();
		public PathfindaxCollisionCategory CollisionCategory { get; set; }

		public DrawingState(DefinitionNode[] nodeArray, Transformer transformer)
		{
			NodeArray = nodeArray;
			Transformer = transformer;
		}

		public void Reset()
		{
			foreach (var drawingLayer in Layers)
			{
				drawingLayer.Reset();
			}
		}
	}
}