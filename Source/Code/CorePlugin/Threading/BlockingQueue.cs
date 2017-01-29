using System;
using System.Collections.Generic;
using System.Threading;

namespace Pathfindax.Threading
{
	internal class BlockingQueue<T> : IQueueReader<T>, IQueueWriter<T>, IDisposable
	{
		public int Count => _mQueue.Count;
		// use a .NET queue to store the data
		private readonly Queue<T> _mQueue = new Queue<T>();
		// create a semaphore that contains the items in the queue as resources.
		// initialize the semaphore to zero available resources (empty queue).
		private Semaphore _mSemaphore = new Semaphore(0, int.MaxValue);
		// a event that gets triggered when the reader thread is exiting
		private readonly ManualResetEvent _mKillThread = new ManualResetEvent(false);
		// wait handles that are used to unblock a Dequeue operation.
		// Either when there is an item in the queue
		// or when the reader thread is exiting.
		private readonly WaitHandle[] _mWaitHandles;

		public BlockingQueue()
		{
			_mWaitHandles = new WaitHandle[] { _mSemaphore, _mKillThread };
		}

		public void Enqueue(T data)
		{
			lock (_mQueue) _mQueue.Enqueue(data);
			// add an available resource to the semaphore,
			// because we just put an item
			// into the queue.
			_mSemaphore.Release();
		}

		public T Dequeue()
		{
			// wait until there is an item in the queue
			WaitHandle.WaitAny(_mWaitHandles);
			lock (_mQueue)
			{
				if (_mQueue.Count > 0)
					return _mQueue.Dequeue();
			}
			return default(T);
		}

		public void ReleaseReader()
		{
			_mKillThread.Set();
		}

		void IDisposable.Dispose()
		{
			if (_mSemaphore != null)
			{
				_mSemaphore.Close();
				_mQueue.Clear();
				_mSemaphore = null;
			}
		}
	}
}
