using System;

namespace Pathfindax.Threading
{
	public interface ISynchronizationContext
	{
		void Post(Action action);
	}
}