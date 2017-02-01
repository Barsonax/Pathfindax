using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public interface INodeNetwork<TNode> : IEnumerable<TNode>
		where TNode : INode
	{
		Array2D<TNode> NodeArray { get; }
		int NodeCount { get; }
	}
}