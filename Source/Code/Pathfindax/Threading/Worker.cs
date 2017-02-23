using System;
using System.Threading;
using System.Threading.Tasks;

namespace Pathfindax.Threading
{
	/// <summary>
	/// Class for doing work on a dedicated thread
	/// </summary>
	/// <typeparam name="TOut"></typeparam>
	/// <typeparam name="TIn"></typeparam>
	public class Worker<TOut, TIn> : IDisposable
	{
		public event EventHandler WorkCompleted;

		/// <summary>
		/// True if this <see cref="Worker{TOut,TIn}"/> is doing work.
		/// </summary>
		public bool IsBusy
		{
			get { return _isBusy; }
			private set
			{
				_isBusy = value;
				WorkCompleted?.Invoke(this, EventArgs.Empty);
			}
		}


		private bool _disposed;

		private readonly ManualResetEvent _waitHandle = new ManualResetEvent(false);
		private readonly IProcesser<TOut, TIn> _processer;
		private TIn _workItem;
		private Action<TOut> _onCompleted;
		private bool _isBusy;

		/// <summary>
		/// Creates a new worker that will start doing its work on a dedicated thread.
		/// </summary>
		/// <param name="processer"></param>
		public Worker(IProcesser<TOut, TIn> processer)
		{
			_processer = processer;
			Task.Factory.StartNew(Start, TaskCreationOptions.LongRunning);
		}

		/// <summary>
		/// Starts the worker
		/// </summary>
		public void Start()
		{
			_disposed = false;
			while (!_disposed)
			{
				_waitHandle.WaitOne();
				var result = _processer.Process(_workItem);
				_onCompleted?.Invoke(result);
				_waitHandle.Reset();
				IsBusy = false;
			}
		}

		/// <summary>
		/// Starts working on a work item on a dedicated thread
		/// </summary>
		/// <param name="taskCompletionSource">The work item</param>
		/// <param name="onCompleted"></param>
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

		/// <inheritdoc />
		public void Dispose()
		{
			_disposed = true;
		}
	}
}