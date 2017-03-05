using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INodeGrid<out TNode> : INodeGrid
		where TNode : INode
	{
		ISourceNodeGrid<ISourceGridNode> SourceSourceNodeGrid { get; }
		IReadOnlyArray2D<TNode> NodeArray { get; }
		TNode this[int index] { get; }
	}

	public interface INodeGrid : INodeNetwork
	{
		PositionF Offset { get; }
		PositionF WorldSize { get; }
		PositionF NodeSize { get; }
	}
}
