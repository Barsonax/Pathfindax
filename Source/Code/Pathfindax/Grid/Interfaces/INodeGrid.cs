using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public interface INodeGrid<out TNode> : INodeNetwork<TNode>, INodeGrid
		where TNode : INode
	{
		new ISourceNodeGrid<ISourceNode> SourceNodeGrid { get; }
		IReadOnlyArray2D<TNode> GetPathfindingGrid(PathfindaxCollisionCategory collisionCategory);
	}

	public interface INodeGrid : INodeNetwork
	{
		ISourceNodeGrid SourceNodeGrid { get; }
	}
}
