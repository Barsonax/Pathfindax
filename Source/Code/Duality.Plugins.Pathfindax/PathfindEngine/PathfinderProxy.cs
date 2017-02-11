using Duality.Plugins.Pathfindax.Components;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.PathfindEngine
{
	/// <summary>
	/// Provides access to the pathfinder
	/// </summary>
	public class PathfinderProxy
	{
		public string PathfinderId { get; set; }

		private IPathfinderComponent _pathfinderComponent;
		private IPathfinderComponent PathfinderComponent => _pathfinderComponent ?? (_pathfinderComponent = PathfindaxDualityCorePlugin.GetPathfinder(PathfinderId));

		/// <summary>
		/// Creates a new <see cref="PathfinderProxy"/> with no id. This will only work if there is only 1 <see cref="IPathfinderComponent"/> in the scene.
		/// </summary>
		public PathfinderProxy() { }

		/// <summary>
		/// Creates a new <see cref="PathfinderProxy"/> with a id so you can have multiple <see cref="IPathfinderComponent"/> in the scene.
		/// </summary>
		/// <param name="pathfinderId"></param>
		public PathfinderProxy(string pathfinderId)
		{
			PathfinderId = pathfinderId;
		}

		public void RequestPath(PathRequest pathRequest)
		{
			PathfinderComponent.RequestPath(pathRequest);
		}
	}
}