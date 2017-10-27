using System.Collections.Generic;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Generic interface for nodenetworks
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public interface INodeNetwork<out TNode> : INodeNetwork, IEnumerable<TNode>
		where TNode : INode
	{
		new ISourceNodeNetwork<ISourceNode> SourceNodeNetwork { get; }
		TNode this[int index] { get; }
	}

	/// <summary>
	/// Interface for nodenetworks
	/// </summary>
	public interface INodeNetwork
	{
		ISourceNodeNetwork SourceNodeNetwork { get; }
	}
}