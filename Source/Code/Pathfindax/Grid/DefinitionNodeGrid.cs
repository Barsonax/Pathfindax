using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Class that holds the definition data for the nodegrid.
	/// The nodegrid will be shared between multiple threads so do not make changes to it after you start pathfinding on it.
	/// </summary>
	public class DefinitionNodeGrid : IDefinitionNodeGrid
	{
		public DefinitionNode this[int index] => NodeGrid[index];		
		public Array2D<DefinitionNode> NodeGrid { get; }
		IReadOnlyArray2D<DefinitionNode> IDefinitionNodeGrid.DefinitionNodeArray => NodeGrid;	
		public Vector2 NodeSize { get; protected set; }
		public int NodeCount => NodeGrid.Length;
		public GridTransformer GridTransformer { get; }
		public Vector2 WorldSize => GridTransformer.WorldSize;
		public Vector2 Offset => GridTransformer.Offset;

		public DefinitionNodeGrid(Array2D<DefinitionNode> grid, Vector2 nodeSize, Vector2 offset)
		{
			NodeGrid = grid;
			var worldSize = new Vector2(NodeGrid.Width * nodeSize.X - nodeSize.X, NodeGrid.Height * nodeSize.Y - nodeSize.Y);
			NodeSize = nodeSize;
			GridTransformer = new GridTransformer(worldSize, offset, new Point2(NodeGrid.Width, NodeGrid.Height), nodeSize);
		}

		public DefinitionNode GetNode(float worldX, float worldY)
		{
			var coords = GridTransformer.TransformToGridCoords(worldX, worldY);
			return NodeGrid[coords.X, coords.Y];
		}
	}
}