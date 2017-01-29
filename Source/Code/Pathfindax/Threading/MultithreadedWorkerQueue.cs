using System;
using System.Collections.Generic;
using System.Threading;

namespace Pathfindax.Threading
{
	public class MultithreadedWorkerQueue<TOut, TIn> : IDisposable
	{
		private readonly BlockingQueue<WorkItem<TOut, TIn>> _workItemsCompletedQueue = new BlockingQueue<WorkItem<TOut, TIn>>();
		private readonly BlockingQueue<WorkItem<TOut, TIn>> _workItemsQueue = new BlockingQueue<WorkItem<TOut, TIn>>();
		private readonly IList<Worker<TOut, TIn>> _workers;
		private readonly ManualResetEvent _stopManualResetEvent = new ManualResetEvent(false);
		private bool _disposed = false;

		/// <summary>
		/// Initializes a new <see cref="MultithreadedWorkerQueue{TOut,TIn}"/>
		/// </summary>
		/// <param name="processers">A list with IProcessers that will do the actual work. The max amount of threads used it equal to the amount of <see cref="IProcesser{TOut,TIn}"/></param> in the list.
		/// <param name="checkInterval">How long the worker will wait before checking the queue again for new work in ms</param>
		public MultithreadedWorkerQueue(IList<IProcesser<TOut, TIn>> processers, double checkInterval = 10)
		{
			_workers = new List<Worker<TOut, TIn>>();
			foreach (var processer in processers)
			{
				_workers.Add(new Worker<TOut, TIn>(processer));
			}
			var queueWriter = new Thread(state =>
			{
				TryProcessNext();
			});
			queueWriter.Start();
			var queueReader = new Thread(state =>
			{
				CallbackCompletedWorkitem();
			});
			queueReader.Start();
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
		public void Enqueue(TIn workItem, Action<TOut> action)
		{
			var taskCompletionSource = new WorkItem<TOut, TIn>(workItem, action);
			_workItemsQueue.Enqueue(taskCompletionSource);
		}

		private void TryProcessNext()
		{
			while (!_disposed)
			{				
				foreach (var worker in _workers)
				{
					if (worker.IsBusy) continue;
					var work = _workItemsQueue.Dequeue();
					_stopManualResetEvent.WaitOne();
					worker.DoWork(work.Work, result =>
					{
						work.Result = result;
						EnqueueCompletedWorkItem(work);
					});
				}
			}
		}

		private void CallbackCompletedWorkitem()
		{
			while (!_disposed)
			{
				var completedWorkItem = _workItemsCompletedQueue.Dequeue();
				completedWorkItem.Callback.Invoke(completedWorkItem.Result);
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
			_disposed = true;
		}
	}
}
