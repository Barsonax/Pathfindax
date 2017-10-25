using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.PathfindEngine
{
	/// <summary>
	/// Proxy for pathfinding on a <see cref="ISourceNodeGrid{ISourceGridNode}"/>
	/// </summary>
	public class GridPathfinderProxy : PathfinderProxy<ISourceGridNode, ISourceNodeGrid<ISourceGridNode>>
    {
		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="start"></param>
		/// <param name="end"></param>
		/// <param name="agentSize"></param>
		/// <param name="collisionLayer"></param>
		/// <returns></returns>
		public PathRequest RequestPath(Vector3 start, Vector3 end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
        {
            return RequestPath(start.X, start.Y, end.X, end.Y, collisionLayer, agentSize);
        }

		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="start"></param>
		/// <param name="end"></param>
		/// <param name="agentSize"></param>
		/// <param name="collisionLayer"></param>
		/// <returns></returns>
		public PathRequest RequestPath(Vector2 start, Vector2 end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
        {
            return RequestPath(start.X, start.Y, end.X, end.Y, collisionLayer, agentSize);
        }

		/// <summary>
		/// Requests a new path
		/// </summary>
		/// <param name="x1"></param>
		/// <param name="y1"></param>
		/// <param name="x2"></param>
		/// <param name="y2"></param>
		/// <param name="agentSize"></param>
		/// <param name="collisionLayer"></param>
		/// <returns></returns>
		public PathRequest RequestPath(float x1, float y1, float x2, float y2, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
        {           
            var offset = -GridClearanceHelper.GridNodeOffset(agentSize, Pathfinder.SourceNodeNetwork.NodeSize.X);
            var startNode = Pathfinder.SourceNodeNetwork.GetNode(x1 + offset, y1 + offset);
            var endNode = Pathfinder.SourceNodeNetwork.GetNode(x2 + offset, y2 + offset);
	        return RequestPath(startNode, endNode, collisionLayer,agentSize);
        }

        /// <summary>
        /// Requests a new path
        /// </summary>
        /// <param name="start"></param>
        /// <param name="end"></param>
        /// <param name="agentSize"></param>
        /// <param name="collisionLayer"></param>
        public PathRequest RequestPath(ISourceNode start, ISourceNode end, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None, byte agentSize = 1)
        {
            return new PathRequest(Pathfinder, start, end, collisionLayer, agentSize);
        }
    }
}
