using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;

namespace Pathfindax.Duality
{
	public class PathfinderProxy : IPathfinder
	{
		public PositionF WorldSize => _pathfinderComponent?.WorldSize ?? new PositionF(0, 0);
		private readonly IPathfinderComponent _pathfinderComponent;

		public PathfinderProxy(string id = null)
		{
			_pathfinderComponent = PathfinderManager.GetPathfinder(id);
		}

		public void RequestPath(PathRequest pathRequest)
		{
			_pathfinderComponent.RequestPath(pathRequest);
		}
	}
}