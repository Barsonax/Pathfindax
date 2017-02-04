using System.Collections.Generic;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	public interface INode<TNode> : INode
		where TNode : INode
	{
		/// <summary>
		/// The connections to other nodes.
		/// </summary>
		IList<NodeConnection<TNode>> Connections { get; set; }
	}

	public interface INode
	{
		/// <summary>
		/// Is this node traversable or not?
		/// </summary>
		bool Walkable { get; set; }

		/// <summary>
		/// The local world position in the grid.
		/// </summary>
		PositionF Position { get; }

		/// <summary>
		/// The absolute world position
		/// </summary>
		PositionF WorldPosition { get; }
	}
}