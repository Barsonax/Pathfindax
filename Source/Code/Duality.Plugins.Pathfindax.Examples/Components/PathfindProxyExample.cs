using Duality.Plugins.Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
    public class PathfindProxyExample : Component, ICmpInitializable
    {
        private GridPathfinderProxy _pathfinderProxy;

        public void OnInit(InitContext context)
        {
            if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
            {
                _pathfinderProxy = new GridPathfinderProxy();
                //Now you can use _pathfinderProxy.RequestPath to request a path from the pathfinder
            }
        }

        public void OnShutdown(ShutdownContext context) { }
    }
}