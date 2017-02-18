using System.Collections.Generic;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INodeNetwork<TNode> : IEnumerable<TNode>, INodeNetworkBase
		where TNode : INode
	{
		TNode GetNode(PositionF worldPosition);
	}

	public interface INodeNetworkBase
	{
		int NodeCount { get; }
	}
}