using System.Collections.Generic;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Components
{
	public interface IPathfinderComponent : IPathfinder
	{
		string PathfinderId { get; }
		INodeNetwork<INode> NodeNetwork { get; }
		void ProcessPaths();
	}
}