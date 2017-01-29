using Pathfindax.PathfindEngine;

namespace Pathfindax.Duality.Components
{
	public interface IPathfinderComponent : IPathfinder
	{
		string PathfinderId { get; }
	}
}