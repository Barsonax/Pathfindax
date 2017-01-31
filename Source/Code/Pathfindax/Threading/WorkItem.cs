namespace Pathfindax.Threading
{
	public class WorkItem<TOut, TIn>
	{
		public TIn Work;
		public TOut Result;

		public WorkItem(TIn work)
		{
			Work = work;
		}
	}
}