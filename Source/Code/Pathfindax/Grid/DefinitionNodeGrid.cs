using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;

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
		public GridTransformer Transformer { get; }
		public int NodeCount => Transformer.NodeCount;
		public Vector2 NodeSize => Transformer.NodeSize;
		public Vector2 WorldSize => Transformer.WorldSize;
		public Vector2 Offset => Transformer.Offset;

		public DefinitionNodeGrid(Array2D<DefinitionNode> grid, Vector2 nodeSize, Vector2 offset)
		{
			NodeGrid = grid;
			var worldSize = new Vector2(NodeGrid.Width * nodeSize.X - nodeSize.X, NodeGrid.Height * nodeSize.Y - nodeSize.Y);
			Transformer = new GridTransformer(worldSize, offset, new Point2(NodeGrid.Width, NodeGrid.Height), nodeSize);
		}

		public DefinitionNode GetNode(float worldX, float worldY)
		{
			var coords = Transformer.ToGridSpace(worldX, worldY);
			return NodeGrid[coords.X, coords.Y];
		}
	}
}