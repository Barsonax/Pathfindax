using System.Collections.Generic;
using Duality;

namespace Pathfindax.Nodes
{
	public interface ISourceNode
	{
		/// <summary>
		/// Used to map from the source nodes to the nodes where the actual pathfinding is done.
		/// </summary>
		NodePointer Index { get; }

		/// <summary>
		/// The absolute world position
		/// </summary>
		Vector2 WorldPosition { get; }

		/// <summary>
		/// The connections to other nodes.
		/// </summary>
		List<NodeConnection> Connections { get; set; }
	}
}