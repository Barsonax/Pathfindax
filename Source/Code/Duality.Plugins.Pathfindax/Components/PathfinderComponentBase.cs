using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Base class for duality pathfinders
	/// </summary>
	public abstract class PathfinderComponentBase : Component, IPathfinderComponent, ICmpInitializable
	{
		/// <summary>
		/// The <see cref="IMultithreadedPathfinder"/> that will be doing the pathfinding on separate threads
		/// </summary>
		protected IMultithreadedPathfinder MultithreadedPathfinder { get; set; }

		/// <inheritdoc />
		public string PathfinderId { get; set; }

		/// <inheritdoc />
		public abstract INodeNetwork<INode> NodeNetwork { get; protected set; }

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
