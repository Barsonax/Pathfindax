using System.Collections.Generic;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Interface for classes that implement algorithms to find a path.
	/// </summary>
	/// <typeparam name="TNodeNetwork"></typeparam>
	public interface IPathFindAlgorithm<TNodeNetwork>
		where TNodeNetwork : INodeNetworkBase
	{
		/// <summary>
		/// Finds a path from <paramref name="pathRequest"></paramref>.PathStart to <paramref name="pathRequest"></paramref>.PathEnd using the <paramref name="nodeNetwork"></paramref> and returns this as a list of <see cref="INode"/>.
		/// </summary>
		/// <param name="nodeNetwork"></param>
		/// <param name="pathRequest"></param>
		/// <returns></returns>
		IList<INode> FindPath(TNodeNetwork nodeNetwork, PathRequest pathRequest);
	}
}
