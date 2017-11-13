using Duality.Editor;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	public class PathfindProxyExample : Component, ICmpInitializable
    {
        private PathfinderProxy<NodePath> _pathfinderProxy;

        public void OnInit(InitContext context)
        {
            if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
            {
                _pathfinderProxy = new PathfinderProxy<NodePath>();
                //Now you can use _pathfinderProxy.RequestPath to request a path from the pathfinder
            }
        }

        public void OnShutdown(ShutdownContext context) { }
    }
}