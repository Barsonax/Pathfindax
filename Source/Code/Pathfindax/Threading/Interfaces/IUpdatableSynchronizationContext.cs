using Pathfindax.PathfindEngine;

namespace Pathfindax.Threading
{
	public interface IUpdatableSynchronizationContext : ISynchronizationContext
	{
		void Update();
	}
}