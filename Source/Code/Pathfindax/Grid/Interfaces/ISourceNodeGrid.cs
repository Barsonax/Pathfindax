using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface ISourceNodeGrid
	{
		Array2D<IGridNode> NodeArray { get; }
		PositionF WorldSize { get; }
		IGridNodeBase NodeFromWorldPoint(PositionF worldPosition);
	}
}