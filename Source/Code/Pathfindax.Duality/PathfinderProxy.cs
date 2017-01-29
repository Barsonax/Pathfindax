using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;

namespace Pathfindax.Duality
{
	public class PathfinderProxy : IPathfinder
	{
		public PositionF WorldSize => _multithreadedPathfinder?.WorldSize ?? new PositionF(0, 0);
		private IMultithreadedPathfinder _multithreadedPathfinder;

		public PathfinderProxy()
		{
			_multithreadedPathfinder = PathfindaxCorePlugin.MultithreadedPathfinder;
		}

		public void RequestPath(PathRequest pathRequest)
		{
			_multithreadedPathfinder.RequestPath(pathRequest);
		}
	}
}