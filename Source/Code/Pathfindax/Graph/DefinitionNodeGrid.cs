using Duality;
using Pathfindax.Collections;
using Pathfindax.Factories;
using Pathfindax.Nodes;

namespace Pathfindax.Graph
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
		public int NodeCount => NodeGrid.Count;
		public Vector2 NodeSize => Transformer.Scale;
		public Vector2 Offset => Transformer.Position;

		public DefinitionNodeGrid(Array2D<DefinitionNode> grid, Vector2 nodeSize, Vector2 offset)
		{
			NodeGrid = grid;			
			Transformer = new GridTransformer(new Point2(NodeGrid.Width, NodeGrid.Height), nodeSize, offset);
		}

		public DefinitionNodeGrid(GenerateNodeGridConnections generateNodeGridConnections, int width, int height, Vector2 nodeSize, Vector2 offset = default(Vector2))
		{
			Transformer = new GridTransformer(new Point2(width, height), nodeSize, offset);
			NodeGrid = DefinitionNodeGridFactory.GeneratePreFilledArray(generateNodeGridConnections, width, height, nodeSize, offset);
		}

		public DefinitionNode GetNode(float worldX, float worldY)
		{
			var coords = Transformer.ToGridSpace(worldX, worldY);
			return NodeGrid[coords.X, coords.Y];
		}
	}
}