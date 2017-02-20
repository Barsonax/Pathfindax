using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INodeGrid<TNode> : INodeNetwork<TNode> , INodeGridBase
		where TNode : IGridNodeBase
	{
		Array2D<TNode> NodeArray { get; }
	}

	public interface INodeGridBase : INodeNetworkBase
	{
		PositionF Offset { get; }
		PositionF WorldSize { get; }
		PositionF NodeSize { get; }
	}
}