using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
    public class PathfindProxyExample : Component, ICmpInitializable
    {
        private PathfinderProxy<ISourceNodeGrid<ISourceGridNode>> _pathfinderProxy;

        public void OnInit(InitContext context)
        {
            if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
            {
                _pathfinderProxy = new PathfinderProxy<ISourceNodeGrid<ISourceGridNode>>();
                //Now you can use _pathfinderProxy.RequestPath(PathRequest) to request a path from the pathfinder
            }
        }

        public void OnShutdown(ShutdownContext context) { }
    }
}