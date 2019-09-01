using Duality;
using Pathfindax.Collections;
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

		public DefinitionNodeGrid(Array2D<DefinitionNode> nodeGrid, Vector2 scale, Vector2 offset = default)
		{
			Transformer = new GridTransformer(new Point2(nodeGrid.Width, nodeGrid.Height), scale, offset);
			NodeGrid = nodeGrid;
		}

		public ref DefinitionNode GetNode(float worldX, float worldY)
		{
			var index = GetNodeIndex(worldX, worldY);
			return ref NodeArray[index];
		}

		public int GetNodeIndex(float worldX, float worldY)
		{
			return NodeGrid.ToIndex(Transformer.ToGrid(worldX, worldY));
		}
	}
}