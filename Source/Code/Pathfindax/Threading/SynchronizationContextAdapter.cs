using System;
using System.Threading;

namespace Pathfindax.Threading
{
	/// <summary>
	/// Makes it possible to use <see cref="SynchronizationContext"/> where <see cref="IUpdatableSynchronizationContext"/> is required.
	/// </summary>
	public class SynchronizationContextAdapter : IUpdatableSynchronizationContext
	{
		private readonly SynchronizationContext _synchronizationContext;
		public SynchronizationContextAdapter(SynchronizationContext synchronizationContext)
		{
			_synchronizationContext = synchronizationContext;
		}

		public void Post(Action action)
		{
			_synchronizationContext.Post(state => action.Invoke(), null);
		}

		/// <summary>
		/// This is just here to implement the <see cref="IUpdatableSynchronizationContext"/> interface. It does nothing.
		/// </summary>
		public void Update() { }
	}
}