using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Timers;
using Timer = System.Timers.Timer;

namespace Pathfindax.Threading
{
	public class WorkItem<TOut, TIn>
	{
		public TIn Work;
		public TOut Result;
		public Action<TOut> Callback;

		public WorkItem(TIn work, Action<TOut> callback)
		{
			Work = work;
			Callback = callback;
		}
	}

	public class MultithreadedWorker<TOut, TIn> : IDisposable
	{
		private readonly Queue<WorkItem<TOut, TIn>> _workItemsCompletedQueue = new Queue<WorkItem<TOut, TIn>>();
		private readonly Queue<WorkItem<TOut, TIn>> _workItemsQueue = new Queue<WorkItem<TOut, TIn>>();
		private readonly IList<Worker<TOut, TIn>> _workers;
		private readonly Timer _timer;
		private Stopwatch _stopWatch;

		/// <summary>
		/// Initializes a new <see cref="MultithreadedWorker{TOut,TIn}"/>
		/// </summary>
		/// <param name="processers">A list with IProcessers that will do the actual work. The max amount of threads used it equal to the amount of <see cref="IProcesser{TOut,TIn}"/></param> in the list.
		/// <param name="checkInterval">How long the worker will wait before checking the queue again for new work in ms</param>
		public MultithreadedWorker(IList<IProcesser<TOut, TIn>> processers, double checkInterval = 10)
		{
			_workers = new List<Worker<TOut, TIn>>();
			foreach (var processer in processers)
			{
				_workers.Add(new Worker<TOut, TIn>(processer));
			}
			_timer = new Timer();
			_timer.AutoReset = true;
			_timer.Interval = checkInterval;
			_timer.Elapsed += TryProcessNext;
			_stopWatch = new Stopwatch();
			_stopWatch.Start();
		}

		/// <summary>
		/// Starts checking the queue for work to do
		/// </summary>
		public void Start()
		{
			_timer.Start();
		}

		/// <summary>
		/// Stops checking the queue for work to do
		/// </summary>
		public void Stop()
		{
			_timer.Stop();
		}

		/// <summary>
		/// Enqueues a new work item in the queue.
		/// </summary>
		/// <param name="workItem"></param>
		/// <returns></returns>
		public void Enqueue(TIn workItem, Action<TOut> action)
		{
			var taskCompletionSource = new WorkItem<TOut, TIn>(workItem, action);
			TryProcessNext(null,null);
			_workItemsQueue.Enqueue(taskCompletionSource);
		}

		private readonly object _locker = new object();
		private void TryProcessNext(object sender, ElapsedEventArgs e)
		{
			lock (_locker)
			{
				foreach (var worker in _workers)
				{
					if (_workItemsQueue.Count > 0)
					{
						if (worker.IsBusy) continue;
						var work = _workItemsQueue.Dequeue();
						worker.DoWork(work.Work, result =>
						{
							work.Result = result;
							FinishedWorkItem(work);
						});
					}
				}

				while (_workItemsCompletedQueue.Count > 0)
				{
					var completedWorkItem = _workItemsCompletedQueue.Dequeue();
					completedWorkItem.Callback.Invoke(completedWorkItem.Result);
				}
			}
		}

		private void FinishedWorkItem(WorkItem<TOut, TIn> resultItem)
		{
			lock (_workItemsCompletedQueue)
			{
				_workItemsCompletedQueue.Enqueue(resultItem);
			}
		}

		/// <summary>
		/// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
		/// </summary>
		public void Dispose()
		{
			_timer.Elapsed -= TryProcessNext;
			_timer.Dispose();
		}
	}
}
