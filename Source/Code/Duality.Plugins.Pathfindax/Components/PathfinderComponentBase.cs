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
		/// <summary>
		/// The <see cref="IMultithreadedPathfinder"/> that will be doing the pathfinding on separate threads
		/// </summary>
		protected IMultithreadedPathfinder MultithreadedPathfinder { get; set; }

		/// <inheritdoc />
		public string PathfinderId { get; set; }

		/// <inheritdoc />
		public abstract TSourceNodeNetwork SourceNodeNetwork { get; protected set; }

		/// <summary>
		/// Called when initializing the pathfinder
		/// </summary>
		/// <param name="context"></param>
		public abstract void OnInit(InitContext context);

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			MultithreadedPathfinder?.Stop();
		}

		/// <inheritdoc />
		public void ProcessPaths()
		{
			MultithreadedPathfinder.ProcessCompletedPaths();
		}

		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="pathRequest"></param>
		public void RequestPath(PathRequest pathRequest)
		{
			MultithreadedPathfinder.RequestPath(pathRequest);
		}
	}
}
