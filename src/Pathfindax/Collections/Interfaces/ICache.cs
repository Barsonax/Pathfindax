namespace Pathfindax.Collections.Interfaces
{
	public interface ICache<TKey, TValue>
	{
		void Add(TKey key, TValue value);
		bool TryGetValue(TKey key, out TValue value);
	}
}
