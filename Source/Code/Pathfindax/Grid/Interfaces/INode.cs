using System.Collections.Generic;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public interface INode<T> : INode
		where T : INode
	{
		IList<T> Neighbours { get; set; }
	}

	public interface INode
	{
		bool Walkable { get; set; }
		PositionF WorldPosition { get; }
	}
}