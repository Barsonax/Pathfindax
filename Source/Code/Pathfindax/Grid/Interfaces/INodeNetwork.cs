using System.Collections.Generic;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Base interface for nodenetworks
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
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

	/// <summary>
	/// Base interface for nodenetworks
	/// </summary>
	public interface INodeNetworkBase
	{
		/// <summary>
		/// The amount of nodes in this <see cref="INodeNetworkBase"/>
		/// </summary>
		int NodeCount { get; }
	}
}