using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INodeGrid<TNode> : INodeNetwork<TNode> , INodeGridBase
		where TNode : IGridNodeBase
	{
		TNode GetNode(PositionF worldPosition);
	}

	public interface INodeGridBase : INodeNetworkBase
	{
		PositionF WorldSize { get; }
		PositionF NodeSize { get; }
	}
}