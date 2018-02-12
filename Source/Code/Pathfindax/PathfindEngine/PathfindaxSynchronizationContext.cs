using System;
using System.Collections.Concurrent;
using System.Threading;

namespace Pathfindax.PathfindEngine
{
	public interface ISynchronizationContext
	{
		void Post(Action action);
	}

	public interface IUpdatableSynchronizationContext : ISynchronizationContext
	{
		void Update();
	}

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