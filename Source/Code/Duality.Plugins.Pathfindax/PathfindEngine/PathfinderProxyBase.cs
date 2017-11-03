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
	public abstract class PathfinderProxyBase<TSourceNodeNetwork>
		where TSourceNodeNetwork : class, IDefinitionNodeNetwork
	{
		/// <summary>
		/// The id of the pathfinder. You can keep this empty if you only have 1 pathfinder in a <see cref="Scene"/>
		/// </summary>
		public string PathfinderId { get; }

		private IPathfinderComponent<TSourceNodeNetwork> _pathfinderComponent;
		/// <summary>
		/// The actual pathfinder
		/// </summary>
		public IPathfinderComponent<TSourceNodeNetwork> PathfinderComponent
		{
			get
			{
				if (_pathfinderComponent != null)
				{
					return _pathfinderComponent;
				}
				var pathfinderComponent = PathfindaxDualityCorePlugin.GetPathfinder<TSourceNodeNetwork>(PathfinderId);
				if (pathfinderComponent == null)
				{
					Log.Game.WriteWarning(PathfinderId == null
						? $"{GetType()}: Could not find a pathfinder of type: {typeof(TSourceNodeNetwork)}"
						: $"{GetType()}: Could not find a pathfinder of type: {typeof(TSourceNodeNetwork)} with id: {PathfinderId}");
				}
				_pathfinderComponent = pathfinderComponent;
				return _pathfinderComponent;
			}
		}

		/// <summary>
		/// Creates a new <see cref="PathfinderProxyBase{TSourceNodeNetwork}"/>. The id has to be supplied if there is more than 1 <see cref="IPathfinderComponent"/> in the scene.
		/// </summary>
		public PathfinderProxyBase(string pathfinderId = null)
		{
			PathfinderId = pathfinderId;
		}
	}
}