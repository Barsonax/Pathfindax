using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Components
{
	public abstract class PathfinderComponentBase : Component, IPathfinderComponent, ICmpInitializable
	{
		protected IMultithreadedPathfinder MultithreadedPathfinder { get; set; }

		public string PathfinderId { get; set; }
		public abstract INodeNetwork<INode> NodeNetwork { get; protected set; }

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
