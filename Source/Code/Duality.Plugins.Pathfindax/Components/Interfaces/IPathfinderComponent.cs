using Duality.Plugins.Pathfindax.PathfindEngine;
using Duality.Resources;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Interface for duality pathfinders
	/// </summary>
	public interface IPathfinderComponent : IPathfinder
	{
		/// <summary>
		/// The id of the pathfinder. This is used by the <see cref="PathfinderProxy"/> to get the correct pathfinder if there are multiple pathfinders in the <see cref="Scene"/>
		/// </summary>
		string PathfinderId { get; }

		/// <summary>
		/// The <see cref="INodeNetwork{TNode}"/> that is used for pathfinding
		/// </summary>
		INodeNetwork<INode> NodeNetwork { get; }

		/// <summary>
		/// Calls the callbacks on the completed paths and removes them from the completed queue
		/// </summary>
		void ProcessPaths();
	}
}