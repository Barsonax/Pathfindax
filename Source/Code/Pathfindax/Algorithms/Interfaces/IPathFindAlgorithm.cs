using System.Collections.Generic;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Interface for classes that implement algorithms to find a path.
	/// </summary>
	/// <typeparam name="TNodeNetwork"></typeparam>
	public interface IPathFindAlgorithm<in TNodeNetwork>
		where TNodeNetwork : INodeNetwork
	{
		/// <summary>
		/// Finds a path from <paramref name="pathRequest"></paramref>.PathStart to <paramref name="pathRequest"></paramref>.PathEnd using the <paramref name="nodeNetwork"></paramref> and returns this as a list of <see cref="INode"/>.
		/// </summary>
		/// <param name="nodeNetwork">The <typeparamref name="TNodeNetwork"/> in which the pathfinding will be done</param>
		/// <param name="pathRequest">The <see cref="PathRequest"/> that contains the info needed such as the start and end of the path</param>
		/// <returns>A list of nodes in the defining the path</returns>
		IList<ISourceNode> FindPath(TNodeNetwork nodeNetwork, PathRequest pathRequest);
	}
}
