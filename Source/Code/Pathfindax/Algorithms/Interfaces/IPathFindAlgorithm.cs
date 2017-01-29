using System.Collections.Generic;
using Pathfindax.Grid;
using Pathfindax.Primitives;

namespace Pathfindax.Algorithms
{
	public interface IPathFindAlgorithm<TNode>
		where TNode : INode
	{
		IList<INode> FindPath(INodeGrid<TNode> nodeGrid, PositionF pathStart, PositionF pathEnd);
	}
}
