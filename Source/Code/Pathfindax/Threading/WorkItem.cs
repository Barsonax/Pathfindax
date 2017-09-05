namespace Pathfindax.Threading
{
	public class WorkItem<TIn>
	{
		public readonly TIn Work;

		public WorkItem(TIn work)
		{
			Work = work;
		}
	}
}