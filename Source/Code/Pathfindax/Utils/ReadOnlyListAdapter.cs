using System.Collections;
using System.Collections.Generic;

namespace Pathfindax.Utils
{
	public class ReadOnlyListAdapter<TIn, TInterface> : IReadOnlyList<TInterface>
		where TIn : TInterface
	{
		public TInterface this[int index] => _items[index];
		public int Count => _items.Length;
		private readonly TIn[] _items;

		public ReadOnlyListAdapter(TIn[] items)
		{
			_items = items;
		}

		public IEnumerator<TInterface> GetEnumerator()
		{
			foreach (var item in _items)
			{
				yield return item;
			}
		}

		IEnumerator IEnumerable.GetEnumerator()
		{
			return GetEnumerator();
		}
	}
}
