using System;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Class that holds nodegrid data which wont change and is safe to share between threads
	/// </summary>
	[Serializable]
	public class SourceNodeGrid : NodeGridBase<IGridNode>
	{
		public SourceNodeGrid(Array2D<IGridNode> grid, PositionF nodeSize, PositionF offset) : base(grid, nodeSize, offset)
		{

		}
	}
}
