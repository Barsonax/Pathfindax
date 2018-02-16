using System;
using System.Collections.Concurrent;
using System.Threading;
using Pathfindax.PathfindEngine;

namespace Pathfindax.Threading
{
	public class UpdatableSynchronizationContext : SynchronizationContext, IUpdatableSynchronizationContext
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

		public override void Post(SendOrPostCallback d, object state)
		{
			Post(() => d.Invoke(state));
		}

		public override void Send(SendOrPostCallback d, object state)
		{
			throw new NotImplementedException();
		}
	}
}