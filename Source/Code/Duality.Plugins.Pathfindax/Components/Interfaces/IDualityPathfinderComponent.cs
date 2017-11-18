using Pathfindax.PathfindEngine;

namespace Duality.Plugins.Pathfindax.Components
{
	/// <summary>
	/// Interface for duality pathfinders
	/// </summary>
	public interface IDualityPathfinderComponent
	{
		IPathfinder Pathfinder { get; }
	}
}