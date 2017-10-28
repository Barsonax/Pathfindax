using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Class that holds nodegrid data which wont change and is safe to share between threads
	/// </summary>
	public class SourceNodeGrid : SourceNodeGridBase<SourceGridNode>
	{
		public SourceNodeGrid(IReadOnlyArray2D<SourceGridNode> grid, Vector2 nodeSize, Vector2 offset) : base(grid, nodeSize, offset)
		{

		}
	}
}
