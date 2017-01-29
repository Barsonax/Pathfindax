using System.Collections.Generic;

namespace Pathfindax.PathfindEngine
{
	public interface IMultithreadedPathfinder
	{
		/// <summary>
		/// Requests a path.
		/// </summary>
		/// <param name="pathRequest"></param>
		void RequestPath(PathRequest pathRequest);

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
}