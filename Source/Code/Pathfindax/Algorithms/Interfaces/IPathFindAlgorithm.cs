using System.Collections.Generic;
using Pathfindax.Grid;
using Pathfindax.Primitives;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Interface for classes that implement algorithms to find a path.
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public interface IPathFindAlgorithm<TNode>
		where TNode : INode
	{
		/// <summary>
		/// Finds a path from <paramref name="pathStart"></paramref> to <paramref name="pathEnd"></paramref> using the <paramref name="nodeGrid"></paramref> and returns this as a list of <see cref="INode"/>.
		/// </summary>
		/// <param name="nodeGrid"></param>
		/// <param name="pathStart"></param>
		/// <param name="pathEnd"></param>
		/// <returns></returns>
		IList<INode> FindPath(INodeGrid<TNode> nodeGrid, PositionF pathStart, PositionF pathEnd);
	}
}
