using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public interface INodeGrid<TNode> : INodeNetwork<TNode>, INodeGrid
		where TNode : INode
	{
		new ISourceNodeGrid<ISourceGridNode> SourceNodeGrid { get; }
		Array2D<TNode> NodeArray { get; }
	}

	public interface INodeGrid : INodeNetwork
	{
		ISourceNodeGrid SourceNodeGrid { get; }
	}
}
