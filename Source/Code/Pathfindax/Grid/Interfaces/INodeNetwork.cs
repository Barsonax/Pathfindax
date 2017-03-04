using System.Collections.Generic;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Generic interface for nodenetworks
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public interface INodeNetwork<out TNode> : IEnumerable<TNode>, INodeNetwork
		where TNode : INode
	{
		TNode this[int index] { get; }
	}

	/// <summary>
	/// Interface for nodenetworks
	/// </summary>
	public interface INodeNetwork
	{
		/// <summary>
		/// The amount of nodes in this <see cref="INodeNetwork"/>
		/// </summary>
		int NodeCount { get; }
	}
}