using System.Collections.Generic;
using Duality;
using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Generic interface for sourcenodenetworks
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public interface ISourceNodeNetwork<out TNode> : ISourceNodeNetwork, IEnumerable<TNode>
		where TNode : ISourceNode
	{
        /// <summary>
        /// Gets the node closest to this position
        /// </summary>
        /// <returns></returns>
        TNode GetNode(float worldX, float worldY);

		TNode this[int index] { get; }
	}

	/// <summary>
	/// Interface for sourcenodenetworks
	/// </summary>
	public interface ISourceNodeNetwork
	{
		Vector2 Offset { get; }

		int NodeCount { get; }
	}
}