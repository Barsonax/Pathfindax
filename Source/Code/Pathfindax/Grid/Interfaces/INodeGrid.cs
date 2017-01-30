using System.Collections.Generic;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INodeGrid<TNode>
		where TNode : IGridNode
	{
		int NodeCount { get; }
		PositionF WorldSize { get; }

		IList<TNode> GetNeighbours(TNode node);
		TNode GetNode(PositionF worldPosition);
	}
}