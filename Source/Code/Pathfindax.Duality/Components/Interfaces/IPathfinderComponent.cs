using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Components
{
	public interface IPathfinderComponent : IPathfinder
	{
		string PathfinderId { get; }

		void ProcessPaths();
	}
}