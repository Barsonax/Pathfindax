using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public interface ISourceNodeGrid<TNode> : ISourceNodeNetwork<TNode> , INodeGrid
		where TNode : IGridNodeBase
	{
		Array2D<TNode> NodeArray { get; }
	}
}