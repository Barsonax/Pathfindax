using Pathfindax.Collections;

namespace Pathfindax.Grid
{
	public interface ISourceNodeGridProvider
	{
		Array2D<IGridNode> GenerateGrid2D();
	}
}
