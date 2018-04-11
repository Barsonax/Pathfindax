using Pathfindax.Collections.Interfaces;
using System.Collections.Generic;

namespace Pathfindax.Collections
{
	public class ConcurrentCache<TKey, TValue> : ICache<TKey, TValue>
	{
		private readonly Dictionary<TKey, TValue> _dictionary;
		private readonly Queue<TKey> _keys;
		public readonly int Capacity;

		public ConcurrentCache(int capacity, IEqualityComparer<TKey> comparer)
		{
			Capacity = capacity;
			_keys = new Queue<TKey>(capacity);
			_dictionary = new Dictionary<TKey, TValue>(capacity, comparer);
		}

		private readonly object _locker = new object();
		public void Add(TKey key, TValue value)
		{
			lock (_locker)
			{
				if (_dictionary.ContainsKey(key))
				{
					_dictionary[key] = value;
				}
				else
				{
					if (_dictionary.Count == Capacity)
					{
						var oldestKey = _keys.Dequeue();
						_dictionary.Remove(oldestKey);
					}
					_dictionary.Add(key, value);
					_keys.Enqueue(key);
				}
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