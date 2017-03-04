using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface ISourceNodeGrid<TNode> : ISourceNodeNetwork<TNode> , INodeGrid
		where TNode : IGridNodeBase
	{
		Array2D<TNode> NodeArray { get; }
	}

	public interface INodeGrid : INodeNetwork
	{
		PositionF Offset { get; }
		PositionF WorldSize { get; }
		PositionF NodeSize { get; }
	}
}