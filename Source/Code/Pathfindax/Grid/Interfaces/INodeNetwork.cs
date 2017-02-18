using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INodeNetwork<TNode> : IEnumerable<TNode>, INodeNetworkBase
		where TNode : INode
	{
		TNode GetNode(PositionF worldPosition);
		Array2D<TNode> NodeArray { get; }
	}

	public interface INodeNetworkBase
	{
		int NodeCount { get; }
		PositionF Offset { get; }
	}
}