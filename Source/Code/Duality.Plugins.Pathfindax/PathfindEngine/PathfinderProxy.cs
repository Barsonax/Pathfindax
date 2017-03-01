using Duality.Plugins.Pathfindax.Components;
using Duality.Resources;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.PathfindEngine
{
	/// <summary>
	/// Provides access to the pathfinder
	/// </summary>
	public class PathfinderProxy
	{
		/// <summary>
		/// The id of the pathfinder. You can keep this empty if you only have 1 pathfinder in a <see cref="Scene"/>
		/// </summary>
		public string PathfinderId { get; set; }

		private IPathfinderComponent _pathfinderComponent;
		/// <summary>
		/// The actual pathfinder
		/// </summary>
		public IPathfinderComponent PathfinderComponent => _pathfinderComponent ?? (_pathfinderComponent = PathfindaxDualityCorePlugin.GetPathfinder(PathfinderId));

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

		/// <summary>
		/// Requests the <see cref="IPathfinderComponent"/> for a new path
		/// </summary>
		/// <param name="pathRequest"></param>
		public void RequestPath(PathRequest pathRequest)
		{
			PathfinderComponent.RequestPath(pathRequest);
		}
	}
}