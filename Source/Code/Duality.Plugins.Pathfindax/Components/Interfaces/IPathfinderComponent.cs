using Duality.Plugins.Pathfindax.PathfindEngine;
using Duality.Resources;
using Pathfindax.Grid;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Generic interface for duality pathfinders
	/// </summary>
	/// <typeparam name="TSourceNodeNetwork"></typeparam>
	public interface IPathfinderComponent<out TSourceNodeNetwork> : IPathfinderComponent
		where TSourceNodeNetwork : ISourceNodeNetwork
	{
		/// <summary>
		/// The <see cref="INodeNetwork{TNode}"/> that is used for pathfinding
		/// </summary>
		TSourceNodeNetwork SourceNodeNetwork { get; }
	}

	/// <summary>
	/// Interface for duality pathfinders
	/// </summary>
	public interface IPathfinderComponent : IPathfinder
	{
		/// <summary>
		/// The id of the pathfinder. This is used by the <see cref="PathfinderProxy{TNode,TSourceNodeNetwork}"/> to get the correct pathfinder if there are multiple pathfinders in the <see cref="Scene"/>
		/// </summary>
		string PathfinderId { get; }

		/// <summary>
		/// Calls the callbacks on the completed paths and removes them from the completed queue
		/// </summary>
		void ProcessPaths();
	}	
}