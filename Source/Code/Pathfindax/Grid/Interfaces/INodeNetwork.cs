using System.Collections.Generic;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INodeNetwork<out TNode> : IEnumerable<TNode>, INodeNetworkBase
		where TNode : INode
	{
		/// <summary>
		/// Gets the node closest to this position
		/// </summary>
		/// <param name="worldPosition"></param>
		/// <returns></returns>
		TNode GetNode(PositionF worldPosition);
	}

	public interface INodeNetworkBase
	{
		int NodeCount { get; }
	}
}