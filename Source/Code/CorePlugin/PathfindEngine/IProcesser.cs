namespace Pathfindax.PathfindEngine
{
	public interface IProcesser<TOut, TIn>
	{
		TOut Process(TIn itemToProcess);
	}
}
