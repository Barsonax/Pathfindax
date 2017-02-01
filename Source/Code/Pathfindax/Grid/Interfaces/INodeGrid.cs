using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INodeGrid<TNode> : INodeNetwork<TNode>
		where TNode : IGridNodeBase
	{
		PositionF WorldSize { get; }
		TNode GetNode(PositionF worldPosition);
	}
}