namespace Pathfindax.PathfindEngine
{
    public enum PathRequestStatus
    {
        /// <summary>
        /// The <see cref="PathRequest"/> is created but no <see cref="IPathfinder"/> is solving it.
        /// </summary>
        Created,

        /// <summary>
        /// A <see cref="IPathfinder"/> is solving this <see cref="PathRequest"/> or its waiting in the queue.
        /// </summary>
        Solving,

        /// <summary>
        /// A path was found.
        /// </summary>
        Solved,

        /// <summary>
        /// The path could not be solved
        /// </summary>
        NoPathFound
    }
}
