using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Threading;

namespace Pathfindax.Threading
{
	/// <summary>
	/// Queues items and processes them with one or multiple threads
	/// </summary>
	/// <typeparam name="TOut"></typeparam>
	/// <typeparam name="TIn"></typeparam>
	public class MultithreadedWorkerQueue<TOut, TIn> : IDisposable
		where TOut : class
		where TIn : class
	{
		private readonly ConcurrentQueue<WorkItem<TOut, TIn>> _workItemsCompletedQueue = new ConcurrentQueue<WorkItem<TOut, TIn>>();
		private readonly BlockingQueue<WorkItem<TOut, TIn>> _workItemsQueue = new BlockingQueue<WorkItem<TOut, TIn>>();
		private readonly IList<Worker<TOut, TIn>> _workers;
		private readonly ManualResetEvent _stopManualResetEvent = new ManualResetEvent(false);
		private bool _disposed = false;

		/// <summary>
		/// Initializes a new <see cref="MultithreadedWorkerQueue{TOut,TIn}"/>
		/// </summary>
		/// <param name="processers">A list with IProcessers that will do the actual work. The max amount of threads used it equal to the amount of <see cref="IProcesser{TOut,TIn}"/></param> in the list.
		public MultithreadedWorkerQueue(IList<IProcesser<TOut, TIn>> processers)
		{
			if(processers.Count == 0) throw new ArgumentException($"Provide atleast one {nameof(IProcesser<TOut, TIn>)}");
			_workers = new List<Worker<TOut, TIn>>();
			foreach (var processer in processers)
			{
				_workers.Add(new Worker<TOut, TIn>(processer));
			}
			var queueWriter = new Thread(TryProcessNext)
			{
				IsBackground = true
			};

			queueWriter.Start();
		}

		/// <summary>
		/// Starts checking the queue for work to do
		/// </summary>
		public void Start()
		{
			_stopManualResetEvent.Set();
		}

		/// <summary>
		/// Stops checking the queue for work to do
		/// </summary>
		public void Stop()
		{
			_stopManualResetEvent.Reset();
		}

		/// <summary>
		/// Enqueues a new work item in the queue.
		/// </summary>
		/// <param name="workItem"></param>
		/// <returns></returns>
		public void Enqueue(TIn workItem)
		{
			var taskCompletionSource = new WorkItem<TOut, TIn>(workItem);
			_workItemsQueue.Enqueue(taskCompletionSource);
		}

		public bool TryDequeue(out TOut result)
		{
			WorkItem<TOut, TIn> completedWorkitem = null;
			if (_workItemsCompletedQueue.TryDequeue(out completedWorkitem))
			{
				result = completedWorkitem.Result;
				return true;
			}
			result = null;
			return false;
		}

		private void TryProcessNext()
		{
			while (!_disposed)
			{
				foreach (var worker in _workers)
				{
					if (worker.IsBusy) continue;
					var work = _workItemsQueue.Dequeue(); //If there is no work left in the queue then the thread will wait here until there is more work.
					_stopManualResetEvent.WaitOne();
					worker.DoWork(work.Work, result =>
					{
						work.Result = result;
						EnqueueCompletedWorkItem(work);
					});
				}
			}
		}

		private void EnqueueCompletedWorkItem(WorkItem<TOut, TIn> resultItem)
		{
			_workItemsCompletedQueue.Enqueue(resultItem);
		}

		/// <summary>
		/// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
		/// </summary>
		public void Dispose()
		{
			foreach (var worker in _workers)
			{
				worker.Dispose();
			}
			_disposed = true;
		}
	}
}
