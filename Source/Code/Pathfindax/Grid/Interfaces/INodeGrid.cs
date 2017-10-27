using Duality;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public interface INodeGrid<TNode> : INodeGrid
		where TNode : INode
	{
		ISourceNodeGrid<ISourceGridNode> SourceSourceNodeGrid { get; }
		Array2D<TNode> NodeArray { get; }
		TNode this[int index] { get; }
	}

	public interface INodeGrid : INodeNetwork
	{
		Vector2 Offset { get; }
		Vector2 WorldSize { get; }
		Vector2 NodeSize { get; }
	}
}
