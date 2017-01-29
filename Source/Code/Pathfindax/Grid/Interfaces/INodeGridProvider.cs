using Pathfindax.Collections;

namespace Pathfindax.Grid
{
	public interface INodeGridProvider
	{
		Array2D<INode> GenerateGrid2D();
	}
}
