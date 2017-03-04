using Duality.Plugins.Pathfindax.Components;
using Duality.Resources;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.PathfindEngine
{
	/// <summary>
	/// Provides access to the pathfinder
	/// </summary>
	/// <typeparam name="TSourceNodeNetwork">The source node network type of the pathfinder</typeparam>
	public class PathfinderProxy<TSourceNodeNetwork>
		where TSourceNodeNetwork : class, ISourceNodeNetwork
	{
		/// <summary>
		/// The id of the pathfinder. You can keep this empty if you only have 1 pathfinder in a <see cref="Scene"/>
		/// </summary>
		public string PathfinderId { get; set; }

		private IPathfinderComponent<TSourceNodeNetwork> _pathfinderComponent;
		/// <summary>
		/// The actual pathfinder
		/// </summary>
		public IPathfinderComponent<TSourceNodeNetwork> PathfinderComponent => _pathfinderComponent ?? (_pathfinderComponent = PathfindaxDualityCorePlugin.GetPathfinder<TSourceNodeNetwork>(PathfinderId));

		/// <summary>
		/// Creates a new <see cref="PathfinderProxy{TSourceNodeNetwork}"/> with no id. This will only work if there is only 1 <see cref="IPathfinderComponent"/> in the scene.
		/// </summary>
		public PathfinderProxy() { }

		/// <summary>
		/// Creates a new <see cref="PathfinderProxy{TSourceNodeNetwork}"/>
		/// </summary>
		/// <param name="pathfinderId">The id that will be used to find the <see cref="IPathfinderComponent"/></param>
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