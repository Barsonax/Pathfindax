using System.Collections.Generic;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Interface for classes that implement algorithms to find a path.
	/// </summary>
	/// <typeparam name="TNodeNetwork"></typeparam>
	public interface IPathFindAlgorithm<TNodeNetwork>
		where TNodeNetwork : INodeNetwork
	{
		/// <summary>
		/// Finds a path from <paramref name="pathStart"></paramref> to <paramref name="pathEnd"></paramref> using the <paramref name="nodeNetwork"></paramref> and returns this as a list of <see cref="IGridNodeBase"/>.
		/// </summary>
		/// <param name="nodeNetwork"></param>
		/// <param name="pathStart"></param>
		/// <param name="pathEnd"></param>
		/// <returns></returns>
		IList<INode> FindPath(TNodeNetwork nodeNetwork, PositionF pathStart, PositionF pathEnd);
	}
}
