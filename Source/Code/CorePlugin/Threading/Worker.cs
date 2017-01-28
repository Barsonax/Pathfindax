using System.Threading;
using System.Threading.Tasks;

namespace Pathfindax.Threading
{
	public class Worker<TProcesser, TOut, TIn>
		where TProcesser : IProcesser<TOut, TIn>
	{
		private readonly TProcesser _processer;

		/// <summary>
		/// True if this <see cref="Worker{T,TOut,TIn}"/> is doing work.
		/// </summary>
		public bool IsBusy { get; private set; }

		public Worker(TProcesser processer)
		{
			_processer = processer;
		}

		/// <summary>
		/// Starts working on a work item in a threadpool thread
		/// </summary>
		/// <param name="work">The work item</param>
		/// <returns>True if the worker was not busy and the work was accepted</returns>
		public bool DoWork(TaskCompletionSource<TOut> work)
		{
			if (IsBusy) return false;
			IsBusy = true;
			ThreadPool.QueueUserWorkItem(_ =>
			{
				var request = (TIn)work.Task.AsyncState;
				var result = _processer.Process(request);
				work.SetResult(result);
				IsBusy = false;
			});
			return true;
		}
	}
}