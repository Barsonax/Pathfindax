using System.Collections.Generic;
using Pathfindax.Algorithms;
using Pathfindax.Grid;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	public interface IPathfinder<out TDefinitionNodeNetwork, TThreadNodeNetwork, TPath> : IPathfinder<TPath>
		where TDefinitionNodeNetwork : IDefinitionNodeNetwork
		where TThreadNodeNetwork : IPathfindNodeNetwork
		where TPath : IPath
	{
		new TDefinitionNodeNetwork DefinitionNodeNetwork { get; }
		new IPathFindAlgorithm<TThreadNodeNetwork, TPath> PathFindAlgorithm { get; }
		new IReadOnlyList<TThreadNodeNetwork> PathfindNodeNetworks { get; }
	}

	public interface IPathfinder<TPath> : IPathfinder
		where TPath : IPath
	{
		/// <summary>
		/// Requests a path.
		/// </summary>
		/// <param name="pathRequest"></param>
		void RequestPath(PathRequest<TPath> pathRequest);

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