using System;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Factories;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Pathfindax.Graph
{
	/// <summary>
	/// Class that holds the definition data for the nodegrid.
	/// The nodegrid will be shared between multiple threads so do not make changes to it after you start pathfinding on it.
	/// </summary>
	public class DefinitionNodeGrid : IDefinitionNodeGrid
	{	
		public Array2D<DefinitionNode> NodeGrid { get; }
		public DefinitionNode[] NodeArray => NodeGrid.Array;
		IReadOnlyArray2D<DefinitionNode> IDefinitionNodeGrid.DefinitionNodeArray => NodeGrid;
		Transformer IDefinitionNodeNetwork.Transformer => Transformer;
		public GridTransformer Transformer { get; }
		public int NodeCount => NodeGrid.Count;

		public DefinitionNodeGrid(GenerateNodeGridConnections generateNodeGridConnections, int width, int height, Vector2 scale, Vector2 offset = default(Vector2))
		{
			Transformer = new GridTransformer(new Point2(width, height), scale, offset);
			NodeGrid = DefinitionNodeGridFactory.GeneratePreFilledArray(generateNodeGridConnections, width, height);
		}

		public DefinitionNode GetNode(float worldX, float worldY)
		{
			var coords = Transformer.ToGrid(worldX, worldY);
			return NodeGrid[coords.X, coords.Y];
		}

		public int GetNodeIndex(float x, float y)
		{
			return NodeGrid.ToIndex(Transformer.ToGrid(x, y));
		}
	}
}