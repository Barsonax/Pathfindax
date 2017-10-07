using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Primitives;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.PathfindEngine
{
    public class GridPathfinderProxy : PathfinderProxy<ISourceGridNode, ISourceNodeGrid<ISourceGridNode>>
    {
        /// <summary>
        /// Requests a new path
        /// </summary>
        public PathRequest RequestPath(Vector3 start, Vector3 end, byte agentSize = 1, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None)
        {
            return RequestPath(start.X, start.Y, end.X, end.Y, agentSize, collisionLayer);
        }

        /// <summary>
        /// Requests a new path
        /// </summary>
        public PathRequest RequestPath(Vector2 start, Vector2 end, byte agentSize = 1, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None)
        {
            return RequestPath(start.X, start.Y, end.X, end.Y, agentSize, collisionLayer);
        }

        /// <summary>
        /// Requests a new path
        /// </summary>
        public PathRequest RequestPath(PositionF start, PositionF end, byte agentSize = 1, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None)
        {
            return RequestPath(start.X, start.Y, end.X, end.Y, agentSize, collisionLayer);
        }

        /// <summary>
        /// Requests a new path
        /// </summary>
        public PathRequest RequestPath(float x1, float y1, float x2, float y2, byte agentSize = 1, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None)
        {           
            var offset = -GridClearanceHelper.GridNodeOffset(agentSize, Pathfinder.SourceNodeNetwork.NodeSize.X);
            var startNode = Pathfinder.SourceNodeNetwork.GetNode(x1 + offset, y1 + offset);
            var endNode = Pathfinder.SourceNodeNetwork.GetNode(x2 + offset, y2 + offset);
            return new PathRequest(Pathfinder, startNode, endNode, agentSize, collisionLayer);
        }

        /// <summary>
        /// Requests a new path
        /// </summary>
        /// <param name="start"></param>
        /// <param name="end"></param>
        /// <param name="agentSize"></param>
        /// <param name="collisionLayer"></param>
        public PathRequest RequestPath(ISourceNode start, ISourceNode end, byte agentSize = 1, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None)
        {
            return new PathRequest(Pathfinder, start, end, agentSize, collisionLayer);
        }
    }
}
