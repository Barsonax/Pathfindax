using Duality.Plugins.Pathfindax.Components;
using Duality.Resources;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Duality.Plugins.Pathfindax.PathfindEngine
{
    /// <summary>
    /// Provides access to the pathfinder.
    /// </summary>
    /// <example>
    /// <img src="../media/PathfindProxyDiagram.png" />
    /// </example>
    /// <typeparam name="TSourceNodeNetwork">The type of source network the pathfinder uses</typeparam>
    /// <typeparam name="TNode">The type of node</typeparam>
    public abstract class PathfinderProxy<TNode, TSourceNodeNetwork>
        where TSourceNodeNetwork : class, ISourceNodeNetwork<TNode>
        where TNode : ISourceNode
    {
        /// <summary>
        /// The id of the pathfinder. You can keep this empty if you only have 1 pathfinder in a <see cref="Scene"/>
        /// </summary>
        public string PathfinderId { get; }

        private IPathfinderComponent<TSourceNodeNetwork> _pathfinderComponent;
        /// <summary>
        /// The actual pathfinder
        /// </summary>
        public IPathfinderComponent<TSourceNodeNetwork> PathfinderComponent => _pathfinderComponent ?? (_pathfinderComponent = PathfindaxDualityCorePlugin.GetPathfinder<TSourceNodeNetwork>(PathfinderId));

        /// <summary>
        /// Creates a new <see cref="PathfinderProxy{TNode,TSourceNodeNetwork}"/>. The id has to be supplied if there is more than 1 <see cref="IPathfinderComponent"/> in the scene.
        /// </summary>
        public PathfinderProxy(string pathfinderId = null)
{
            PathfinderId = pathfinderId;
        }
    }
}