using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public interface INodeGrid<out TNode> : INodeNetwork<TNode>, INodeGrid
		where TNode : INode
	{
		new ISourceNodeGrid<ISourceNode> SourceNodeGrid { get; }
	}

	public interface INodeGrid : INodeNetwork
	{
		ISourceNodeGrid SourceNodeGrid { get; }
	}
}
