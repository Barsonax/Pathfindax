using System;
using System.Threading;

namespace Pathfindax.Threading
{
	public class Worker<TOut, TIn>
	{
		/// <summary>
		/// True if this <see cref="Worker{T,TOut,TIn}"/> is doing work.
		/// </summary>
		public bool IsBusy { get; private set; }


		public bool Stopped { get; private set; }

		private readonly ManualResetEvent _waitHandle = new ManualResetEvent(false);
		private readonly IProcesser<TOut, TIn> _processer;
		private TIn _workItem;
		private Action<TOut> _onCompleted;

		public Worker(IProcesser<TOut, TIn> processer)
		{
			_processer = processer;
			var thread = new Thread(() => Start())
			{
				IsBackground = true
			};
			thread.Start();
		}

		public void Start(object threadConText = null)
		{
			Stopped = false;
			while (!Stopped)
			{
				_waitHandle.WaitOne();
				var result = _processer.Process(_workItem);
				_onCompleted?.Invoke(result);
				_waitHandle.Reset();
				IsBusy = false;
			}
		}

		public void Stop()
		{
			Stopped = true;
		}

		/// <summary>
		/// Starts working on a work item on a dedicated thread
		/// </summary>
		/// <param name="taskCompletionSource">The work item</param>
		/// <returns>True if the worker was not busy and the work was accepted</returns>
		public bool DoWork(TIn taskCompletionSource, Action<TOut> onCompleted)
		{
			if (!IsBusy)
			{
				IsBusy = true;
				_workItem = taskCompletionSource;
				_onCompleted = onCompleted;
				_waitHandle.Set();
				return true;
			}
			return false;
		}
	}
}