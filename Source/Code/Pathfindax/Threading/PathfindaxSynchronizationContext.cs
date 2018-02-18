using System;
using System.Collections.Concurrent;

namespace Pathfindax.Threading
{
	public class UpdatableSynchronizationContext : IUpdatableSynchronizationContext
	{
		private readonly ConcurrentQueue<Action> _callbacks = new ConcurrentQueue<Action>();

		public void Update()
		{
			while (_callbacks.TryDequeue(out var callback))
			{
				callback.Invoke();
			}
		}

		public void Post(Action action)
		{
			_callbacks.Enqueue(action);
		}
	}
}