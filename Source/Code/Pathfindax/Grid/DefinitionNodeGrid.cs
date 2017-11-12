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
		public Vector2 WorldSize { get; protected set; }
		public Vector2 NodeSize { get; protected set; }
		public int NodeCount => NodeGrid.Length;
		public Vector2 Offset { get; protected set; }

		public DefinitionNodeGrid(Array2D<DefinitionNode> grid, Vector2 nodeSize, Vector2 offset)
		{
			NodeGrid = grid;
			WorldSize = new Vector2(NodeGrid.Width * nodeSize.X - nodeSize.X, NodeGrid.Height * nodeSize.Y - nodeSize.Y);
			NodeSize = nodeSize;
			Offset = offset;
		}

		public DefinitionNode GetNode(float worldX, float worldY)
		{			
			var percentX = (worldX - Offset.X) / WorldSize.X;
			var percentY = (worldY - Offset.Y) / WorldSize.Y;
			percentX = Mathf.Clamp(percentX, 0, 1);
			percentY = Mathf.Clamp(percentY, 0, 1);

			var x = Mathf.RoundToInt((NodeGrid.Width - 1) * percentX);
			var y = Mathf.RoundToInt((NodeGrid.Height - 1) * percentY);

			return NodeGrid[x, y];
		}
	}
}