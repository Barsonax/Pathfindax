using System.Collections.Generic;

namespace Pathfindax.Collections
{
	public class ConcurrentCache<TKey, TValue>
	{
		private readonly Dictionary<TKey, TValue> _dictionary;
		private readonly Queue<TKey> _keys;
		private readonly int _capacity;

		public ConcurrentCache(int capacity, IEqualityComparer<TKey> comparer)
		{
			_capacity = capacity;
			_keys = new Queue<TKey>(capacity);
			_dictionary = new Dictionary<TKey, TValue>(capacity, comparer);
		}

		private readonly object _locker = new object();
		public void Add(TKey key, TValue value)
		{
			lock (_locker)
			{
				if (_dictionary.Count == _capacity)
				{
					var oldestKey = _keys.Dequeue();
					_dictionary.Remove(oldestKey);
				}

				_dictionary.Add(key, value);
				_keys.Enqueue(key);
			}
		}

		public bool TryGetValue(TKey key, out TValue value)
		{
			lock (_locker)
			{
				return _dictionary.TryGetValue(key, out value);
			}
		}
	}
}