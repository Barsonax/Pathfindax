using System.Collections.Generic;
using Duality;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	public interface IPathfinder<out TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> : IPathfinder<TDefinitionNodeNetwork ,TPath>
		where TDefinitionNodeNetwork : IDefinitionNodeNetwork
		where TThreadNodeNetwork : IPathfindNodeNetwork
		where TPath : IPath
	{
		new IPathFindAlgorithm<TThreadNodeNetwork, TPath> PathFindAlgorithm { get; }
		new IReadOnlyList<TThreadNodeNetwork> PathfindNodeNetworks { get; }
	}

	public interface IPathfinder<out TDefinitionNodeNetwork, TPath> : IPathfinder<TPath>
		where TPath : IPath
	{
		new TDefinitionNodeNetwork DefinitionNodeNetwork { get; }
	}

	public interface IPathfinder<TPath> : IPathfinder
		where TPath : IPath
	{
		/// <summary>
		/// Requests a path.
		/// </summary>
		/// <param name="pathRequest"></param>
		void RequestPath(PathRequest<TPath> pathRequest);

		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="start"></param>
		/// <param name="end"></param>
		/// <param name="agentSize"></param>
		/// <param name="collisionLayer"></param>
		/// <returns></returns>
		PathRequest<TPath> RequestPath(Vector3 start, Vector3 end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1);


		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="start"></param>
		/// <param name="end"></param>
		/// <param name="agentSize"></param>
		/// <param name="collisionLayer"></param>
		/// <returns></returns>
		PathRequest<TPath> RequestPath(Vector2 start, Vector2 end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1);


		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="x1"></param>
		/// <param name="y1"></param>
		/// <param name="x2"></param>
		/// <param name="y2"></param>
		/// <param name="agentSize"></param>
		/// <param name="collisionLayer"></param>
		/// <returns></returns>
		PathRequest<TPath> RequestPath(float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1);

		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="start"></param>
		/// <param name="end"></param>
		/// <param name="agentSize"></param>
		/// <param name="collisionLayer"></param>
		PathRequest<TPath> RequestPath(DefinitionNode start, DefinitionNode end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1);


		new IPathFindAlgorithm<TPath> PathFindAlgorithm { get; }
	}

	public interface IPathfinder
	{
		IDefinitionNodeNetwork DefinitionNodeNetwork { get; }

		IPathFindAlgorithm PathFindAlgorithm { get; }

		IReadOnlyList<IPathfindNodeNetwork> PathfindNodeNetworks { get; }

		/// <summary>
		/// Starts the pathfinder.
		/// </summary>
		void Start();

		/// <summary>
		/// Stops the pathfinder.
		/// </summary>
		void Stop();
		void ProcessPaths();
	}
}