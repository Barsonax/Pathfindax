using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Duality.Plugins.Pathfindax.PathfindEngine
{
	public class PathfinderProxy : PathfinderProxyBase<Path> { }

	public class FlowFieldPathfinderProxy : PathfinderProxyBase<FlowField> { }

	public class PotentialFieldPathfinderProxy : PathfinderProxyBase<PotentialField> { }
}
