using Pathfindax.Duality.Components;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Duality.PathfindEngine
{
	/// <summary>
	/// Provides access to the pathfinder
	/// </summary>
	public class PathfinderProxy
	{
		public string PathfinderId { get; set; }
		private IPathfinderComponent _pathfinderComponent;
		private IPathfinderComponent PathfinderComponent => _pathfinderComponent ?? (_pathfinderComponent = PathfindaxDualityCorePlugin.GetPathfinder(PathfinderId));

		public PathfinderProxy() { }

		public PathfinderProxy(string pathfinderId = null)
		{
			PathfinderId = pathfinderId;
			_pathfinderComponent = null;
		}

		public void RequestPath(PathRequest pathRequest)
		{
			PathfinderComponent.RequestPath(pathRequest);
		}
	}
}