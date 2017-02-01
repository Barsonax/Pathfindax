using System;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Class that holds nodegrid data which wont change and is safe to share between threads
	/// </summary>
	[Serializable]
	public class SourceNodeGrid : NodeGridBase<IGridNode>
	{
		public SourceNodeGrid(Array2D<IGridNode> grid, float cellSize) : base(grid, cellSize)
		{

		}
	}
}
