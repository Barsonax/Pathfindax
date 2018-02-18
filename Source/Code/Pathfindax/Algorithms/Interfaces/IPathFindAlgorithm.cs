using Pathfindax.Graph;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Pathfindax.Algorithms
{
	/// <summary>
	/// Interface for classes that implement algorithms to find a path.
	/// </summary>
	/// <typeparam name="TThreadNodeNetwork"></typeparam>
	/// <typeparam name="TPath"></typeparam>
	public interface IPathFindAlgorithm<in TThreadNodeNetwork, TPath> : IPathFindAlgorithm<TPath>
		where TThreadNodeNetwork : IPathfindNodeNetwork
		where TPath : IPath
	{
		/// <summary>
		/// Finds a path.
		/// </summary>
		/// <param name="nodeNetwork">The <typeparamref name="TThreadNodeNetwork"/> in which the pathfinding will be done</param>
		/// <param name="pathRequest">The <see cref="PathRequest"/> that contains the info needed such as the start and end of the path</param>
		/// <returns>A list of nodes in the defining the path</returns>
		TPath FindPath(TThreadNodeNetwork nodeNetwork, IPathRequest pathRequest, out bool succes);		
	}

	public interface IPathFindAlgorithm<TPath> : IPathFindAlgorithm
		where TPath : IPath
	{
		//PathRequest<TPath> CreatePathRequest(IPathfinder<TPath> pathfinder, IDefinitionNodeNetwork definitionNodes, float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1);
	}

	public interface IPathFindAlgorithm
	{
		
	}
}
