using Pathfindax.Collections;

namespace Pathfindax.Grid
{
	public interface ISourceNodeGridProvider
	{
		Array2D<INode> GenerateGrid2D();
	}
}
