using System.Collections.Generic;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface ISourceNodeGrid
	{
		int Height { get; }
		int Width { get; }
		PositionF WorldSize { get; }
		List<IGridNode> GetNeighbours(IGridNode gridNode);
		IGridNode NodeFromWorldPoint(PositionF worldPosition);
	}
}