namespace Pathfindax.Collections
{
	public interface IPriorityComparable<T>
	{
		bool HasHigherPriority(in T other);
	}
}