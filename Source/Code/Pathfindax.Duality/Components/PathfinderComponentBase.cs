using Duality;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;

namespace Pathfindax.Duality.Components
{
	public abstract class PathfinderComponentBase : Component, IPathfinderComponent, ICmpInitializable
	{
		protected IMultithreadedPathfinder MultithreadedPathfinder { get; set; }

		public PositionF WorldSize => MultithreadedPathfinder?.WorldSize ?? new PositionF(0, 0);
		public string PathfinderId { get; set; }

		public abstract void OnInit(InitContext context);

		void ICmpInitializable.OnShutdown(ShutdownContext context)
		{
			MultithreadedPathfinder?.Stop();
		}

		public void ProcessPaths()
		{
			MultithreadedPathfinder.ProcessCompletedPaths();
		}

		public void RequestPath(PathRequest pathRequest)
		{
			MultithreadedPathfinder.RequestPath(pathRequest);
		}
	}
}
