using System;

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
}