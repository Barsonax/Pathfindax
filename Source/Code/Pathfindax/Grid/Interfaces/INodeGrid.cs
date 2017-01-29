using System.Collections.Generic;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INodeGrid<TNode>
		where TNode : INode
	{
		int NodeCount { get; }
		PositionF WorldSize { get; }

		List<TNode> GetNeighbours(TNode node);
		TNode GetNode(PositionF worldPosition);
	}
}