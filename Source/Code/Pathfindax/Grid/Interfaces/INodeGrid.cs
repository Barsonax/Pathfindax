using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INodeGrid<out TNode> : INodeNetwork
		where TNode : IGridNodeBase
	{
		PositionF WorldSize { get; }
		TNode GetNode(PositionF worldPosition);
	}

	public interface INodeNetwork
	{
		int NodeCount { get; }
	}
}