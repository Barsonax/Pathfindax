using System.Collections.Generic;

namespace Pathfindax.PathfindEngine
{
	public interface IMultithreadedPathfinder
	{
		void RequestPath(PathRequest pathRequest);
		void ProcessCompletedPaths();
		void Start();
		void Stop();
	}
}