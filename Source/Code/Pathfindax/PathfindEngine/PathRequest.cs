using System;
using Pathfindax.Nodes;
using System.Collections.Generic;

namespace Pathfindax.PathfindEngine
{
    /// <summary>
    /// A class with all the information needed to calculate a path from A to B.
    /// </summary>
    public class PathRequest
    {
        /// <summary>
        /// The node start node.
        /// </summary>
        public readonly ISourceNode PathStart;

        /// <summary>
        /// The end node.
        /// </summary>
        public readonly ISourceNode PathEnd;

        /// <summary>
        /// The size of the agent. 1 is the default value meaning that the agent occupies only 1 node.
        /// </summary>
        public readonly byte AgentSize;

        /// <summary>
        /// The CollisionLayer. Sometimes you can have multiple nodenetworks. One for agents that have to move over land and one for agents that can move over land and sea for instance.
        /// </summary>
        public readonly PathfindaxCollisionCategory CollisionLayer;

        /// <summary>
        /// The callback that will be called after the pathfinder finds a path or cannot find one.
        /// </summary>
        private readonly List<Action<PathRequest>> _callbacks = new List<Action<PathRequest>>();

        /// <summary>
        /// The calculated path. Will be null unless the <see cref="Status"/> is equal to <see cref="PathRequestStatus.Solved"/>
        /// </summary>
        public ISourceNode[] Path { get; private set; }

        public PathRequestStatus Status { get; private set; }

        /// <summary>
        /// Starts solving the path using the provided <paramref name="pathfinder"/>.
        /// </summary>
        /// <param name="pathfinder"></param>
        public void StartSolvePath(IPathfinder pathfinder)
        {
            if (Status != PathRequestStatus.Created) throw new InvalidOperationException("This path request is already being processed or processed");
            Status = PathRequestStatus.Solving;
            pathfinder.RequestPath(this);
        }

        /// <summary>
        /// Adds a new callback to this <see cref="PathRequest"/>
        /// </summary>
        /// <param name="callback">The callback that will be called when the pathfinder has solved this <see cref="PathRequest"/></param>
        public void AddCallback(Action<PathRequest> callback)
        {
            if (Status > PathRequestStatus.Solved)
            {
                callback.Invoke(this);
            }
            else
            {
                _callbacks.Add(callback);
            }          
        }

        /// <summary>
        /// Creates a new <see cref="PathRequest"/>
        /// </summary>
        /// <param name="start">The worldcoordinates of the start of the path</param>
        /// <param name="end">The worldcoordinates of the end of the path</param>
        /// <param name="agentSize">The size of the agent in nodes</param>
        /// <param name="collisionLayer">The collision layers that this agent cannot cross</param>
        public PathRequest(ISourceNode start, ISourceNode end, byte agentSize = 1, PathfindaxCollisionCategory collisionLayer = PathfindaxCollisionCategory.None)
        {
            PathStart = start;
            PathEnd = end;
            AgentSize = agentSize;
            CollisionLayer = collisionLayer;
        }

        internal void FinishSolvePath(ISourceNode[] path)
        {
            Path = path;
            Status = Path != null ? PathRequestStatus.Solved : PathRequestStatus.NoPathFound;
        }

        internal void CallCallbacks()
        {
            foreach (var callback in _callbacks)
            {
                callback.Invoke(this);
            }
        }
    }
}
