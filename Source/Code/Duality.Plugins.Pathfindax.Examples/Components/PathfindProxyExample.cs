using Duality.Editor;
using Duality.Plugins.Pathfindax.Components;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Examples.Components
{
	[EditorHintCategory(PathfindaxStrings.PathfindaxTest)]
	[ExecutionOrder(ExecutionRelation.After, typeof(IDualityPathfinderComponent))]
	public class PathfindProxyExample : Component, ICmpInitializable
    {
        private NodePathFieldPathfindProxy _pathfinderProxy;

        public void OnInit(InitContext context)
        {
            if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
            {
                _pathfinderProxy = new NodePathFieldPathfindProxy();
                //Now you can use _pathfinderProxy.RequestPath to request a path from the pathfinder
            }
        }

        public void OnShutdown(ShutdownContext context) { }
    }
}