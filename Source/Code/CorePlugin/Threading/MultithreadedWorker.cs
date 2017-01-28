using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Timers;
using Pathfindax.PathfindEngine;
using Timer = System.Timers.Timer;

namespace Pathfindax.Threading
{
	public class MultithreadedWorker<TOut, TIn> : IDisposable
	{
		private readonly Queue<TaskCompletionSource<TOut>> _workItemsQueue = new Queue<TaskCompletionSource<TOut>>();
		private readonly IList<Worker<IProcesser<TOut, TIn>, TOut, TIn>> _workers;
		private readonly Timer _timer;

		/// <summary>
		/// Initializes a new <see cref="MultithreadedWorker{TOut,TIn}"/>
		/// </summary>
		/// <param name="processers">A list with IProcessers that will do the actual work. The max amount of threads used it equal to the amount of <see cref="IProcesser{TOut,TIn}"/></param> in the list.
		/// <param name="checkInterval">How long the worker will wait before checking the queue again for new work in ms</param>
		public MultithreadedWorker(IList<IProcesser<TOut, TIn>> processers, double checkInterval = 10)
		{
			_workers = new List<Worker<IProcesser<TOut, TIn>, TOut, TIn>>();
			foreach (var processer in processers)
			{
				_workers.Add(new Worker<IProcesser<TOut, TIn>, TOut, TIn>(processer));
			}
			_timer = new Timer();
			_timer.AutoReset = true;
			_timer.Interval = checkInterval;
			_timer.Elapsed += TryProcessNext;
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
		public async Task<TOut> Enqueue(TIn workItem)
		{
			var taskCompletionSource = new TaskCompletionSource<TOut>(workItem);

			_workItemsQueue.Enqueue(taskCompletionSource);
			await taskCompletionSource.Task;
			return taskCompletionSource.Task.Result;
		}

		private void TryProcessNext(object sender, ElapsedEventArgs e)
		{
			foreach (var worker in _workers)
			{
				if (_workItemsQueue.Count > 0)
				{
					if (worker.IsBusy) continue;
					var work = _workItemsQueue.Dequeue();
					worker.DoWork(work);
				}
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
