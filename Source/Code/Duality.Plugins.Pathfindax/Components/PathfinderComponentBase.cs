using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Base class for duality pathfinders
	/// </summary>
	public abstract class PathfinderComponentBase<TSourceNodeNetwork> : Component, IPathfinderComponent<TSourceNodeNetwork>, ICmpInitializable
		where TSourceNodeNetwork : ISourceNodeNetwork
	{
		/// <inheritdoc />
		public IPathfinder<TSourceNodeNetwork> Pathfinder { get; protected set; }

		/// <inheritdoc />
		public string PathfinderId { get; set; }

		/// <summary>
		/// Called when initializing the pathfinder
		/// </summary>
		/// <param name="context"></param>
		public abstract void OnInit(InitContext context);

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			Pathfinder?.Stop();
		}

		/// <inheritdoc />
		public void ProcessPaths()
		{
			Pathfinder.ProcessCompletedPaths();
		}

		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="pathRequest"></param>
		public void RequestPath(PathRequest pathRequest)
		{
			Pathfinder.RequestPath(pathRequest);
		}
	}
}
