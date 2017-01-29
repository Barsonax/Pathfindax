namespace Pathfindax.Threading
{
	public interface IProcesser<out TOut, in TIn>
	{
		TOut Process(TIn itemToProcess);
	}
}
