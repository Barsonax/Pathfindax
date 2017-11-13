using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Interface for classes that implement algorithms to find a path.
	/// </summary>
	/// <typeparam name="TNodeNetwork"></typeparam>
	/// <typeparam name="TPath"></typeparam>
	public interface IPathFindAlgorithm<in TNodeNetwork, TPath> : IPathFindAlgorithm<TPath>
		where TNodeNetwork : IPathfindNodeNetwork
		where TPath : IPath
	{
		/// <summary>
		/// Finds a path from <paramref name="pathRequest"></paramref>.PathStart to <paramref name="pathRequest"></paramref>.PathEnd using the <paramref name="nodeNetwork"></paramref> and returns this as a list of <see cref="INode"/>.
		/// </summary>
		/// <param name="nodeNetwork">The <typeparamref name="TNodeNetwork"/> in which the pathfinding will be done</param>
		/// <param name="pathRequest">The <see cref="PathRequest"/> that contains the info needed such as the start and end of the path</param>
		/// <returns>A list of nodes in the defining the path</returns>
		TPath FindPath(TNodeNetwork nodeNetwork, IPathRequest pathRequest);		
	}

	public interface IPathFindAlgorithm<TPath> : IPathFindAlgorithm
		where TPath : IPath
	{
		PathRequest<TPath> CreatePathRequest(IPathfinder<TPath> pathfinder, IDefinitionNodeNetwork definitionNodes, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1);
	}

	public interface IPathFindAlgorithm
	{
		
	}
}
