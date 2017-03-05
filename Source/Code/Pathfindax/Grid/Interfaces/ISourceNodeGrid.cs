using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public interface ISourceNodeGrid<out TNode> : ISourceNodeNetwork<TNode> , INodeGrid
		where TNode : ISourceGridNode
	{
		IReadOnlyArray2D<TNode> NodeArray { get; }
	}
}