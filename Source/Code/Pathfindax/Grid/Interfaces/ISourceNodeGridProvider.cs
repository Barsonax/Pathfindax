using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public interface ISourceNodeGridProvider
	{
		Array2D<IGridNodeBase> GenerateGrid2D();
	}
}
