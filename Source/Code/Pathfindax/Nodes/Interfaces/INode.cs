using System.Collections.Generic;
using Pathfindax.Primitives;

namespace Pathfindax.Nodes
{
	public interface INode<T> : INode
		where T : INode
	{
		/// <summary>
		/// The connections to other nodes.
		/// </summary>
		IList<T> Connections { get; set; }
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
	}
}