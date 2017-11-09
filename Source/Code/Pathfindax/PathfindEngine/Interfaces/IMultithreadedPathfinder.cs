using Pathfindax.Algorithms;
using Pathfindax.Grid;

namespace Pathfindax.PathfindEngine
{
	public interface IPathfinder<out TSourceNodeNetwork> : IPathfinder
		where TSourceNodeNetwork : IDefinitionNodeNetwork
	{
		TSourceNodeNetwork SourceNodeNetwork { get; }

		/// <summary>
		/// This will process any completedpaths.
		/// </summary>
		void ProcessCompletedPaths();

		/// <summary>
		/// Starts the pathfinder.
		/// </summary>
		void Start();

		/// <summary>
		/// Stops the pathfinder.
		/// </summary>
		void Stop();
	}

	public interface IPathfinder
	{
		IPathFindAlgorithm PathFindAlgorithm { get; }

		/// <summary>
		/// Requests a path.
		/// </summary>
		/// <param name="pathRequest"></param>
		void RequestPath(PathRequest pathRequest);
	}
}