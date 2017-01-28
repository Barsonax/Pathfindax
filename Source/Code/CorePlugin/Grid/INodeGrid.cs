using System.Collections.Generic;
using Duality;

namespace Pathfindax.Grid
{
	public interface INodeGrid<TNode>
		where TNode : INode
	{
		int MaxSize { get; }

		List<TNode> GetNeighbours(TNode node);
		TNode GetNode(Vector2 worldPoint);
	}
}