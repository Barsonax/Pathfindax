﻿using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Class that holds nodegrid data which wont change and is safe to share between threads
	/// </summary>
	public class SourceNodeGrid : SourceNodeGridBase<ISourceGridNode>
	{
		public SourceNodeGrid(Array2D<ISourceGridNode> grid, PositionF nodeSize, PositionF offset) : base(grid, nodeSize, offset)
		{

		}
	}
}
