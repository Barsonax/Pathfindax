using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Pathfindax.Threading
{
    /// <summary>
    /// Queues items and processes them with one or multiple threads
    /// </summary>
    /// <typeparam name="TIn"></typeparam>
    public class MultithreadedWorkerQueue<TIn> : IDisposable
    {
        private readonly ConcurrentQueue<TIn> _workItemsCompletedQueue = new ConcurrentQueue<TIn>();
        private readonly BlockingQueue<TIn> _workItemsQueue = new BlockingQueue<TIn>();
        private readonly IList<Worker<TIn>> _workers;
        private readonly ManualResetEvent _stopManualResetEvent = new ManualResetEvent(false);
        private readonly AutoResetEvent _autoResetEvent = new AutoResetEvent(false);
        private bool _disposed;

	    public MultithreadedWorkerQueue(Func<IProcesser<TIn>> processerConstructor, int threads = 1)
	    {
		    if (threads < 1) throw new ArgumentException("There is a minimum of 1 thread");
		    _workers = new List<Worker<TIn>>();
		    for (var i = 0; i < threads; i++)
		    {
				var worker = new Worker<TIn>(processerConstructor.Invoke());
			    worker.WorkCompleted += Worker_WorkCompleted;
			    _workers.Add(worker);
			}
		    Task.Factory.StartNew(TryProcessNext, TaskCreationOptions.LongRunning);
	    }

		private void Worker_WorkCompleted(object sender, EventArgs e)
        {
            _autoResetEvent.Set();
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
            _workItemsQueue.Enqueue(workItem);
            _autoResetEvent.Set();
        }

        public bool TryDequeue(out TIn result)
        {
            if (_workItemsCompletedQueue.TryDequeue(out result))
            {
                return true;
            }
            result = default(TIn);
            return false;
        }

        private void TryProcessNext()
        {
            while (!_disposed)
            {
                _autoResetEvent.WaitOne(); //If all workers are busy the thread will wait here so it wont use up cpu with useless polling of the worker.IsBusy.
                foreach (var worker in _workers)
                {
                    if (worker.IsBusy) continue;
                    var work = _workItemsQueue.Dequeue(); //If there is no work left in the queue then the thread will wait here until there is more work.
                    _stopManualResetEvent.WaitOne();

                    worker.DoWork(work, result =>
                    {
                        EnqueueCompletedWorkItem(work);
                    });
                }
            }
        }

        private void EnqueueCompletedWorkItem(TIn resultItem)
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
                worker.WorkCompleted -= Worker_WorkCompleted;
                worker.Dispose();
            }
            _disposed = true;
        }
    }
}
