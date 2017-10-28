using Duality.Editor;
using Duality.Plugins.Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
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