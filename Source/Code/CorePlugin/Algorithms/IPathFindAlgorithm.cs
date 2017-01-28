using System.Collections.Generic;
using Duality;
using Pathfindax.Grid;

namespace Pathfindax.Algorithms
{
	public interface IPathFindAlgorithm<TNode>
		where TNode : INode
	{
		IList<INode> FindPath(INodeGrid<TNode> nodeGrid, Vector2 pathStart, Vector2 pathEnd);
	}
}
