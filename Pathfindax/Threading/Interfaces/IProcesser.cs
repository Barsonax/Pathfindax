namespace Pathfindax.Threading
{
	public interface IProcesser<in TIn>
	{
		void Process(TIn itemToProcess);
	}
}
