using System;

namespace Pathfindax.Collections
{
	/// <summary>
	/// A fast maxheap that is used as a priority queue for pathfinding.
	/// </summary>
	/// <typeparam name="T"></typeparam>
	public class MaxHeap<T>
		where T : class, IHeapItem<T>
	{
		/// <summary>
		/// The current amount of items in the heap.
		/// </summary>
		public int Count { get; private set; }

		public int Capacity => _items.Length;
		private readonly T[] _items;

		/// <summary>
		/// Creates a new <see cref="MaxHeap{T}"/>. The max amount of items in the heap is equal to <paramref name="maxHeapSize"/>
		/// </summary>
		/// <param name="maxHeapSize"></param>
		public MaxHeap(int maxHeapSize)
		{
			_items = new T[maxHeapSize];
		}

		/// <summary>
		/// Adds the item to the heap
		/// </summary>
		/// <exception cref="IndexOutOfRangeException">If the interal array is full</exception>
		/// <param name="item"></param>
		public void Add(T item)
		{
			item.HeapIndex = Count;
			_items[Count] = item;
			SortUp(item);
			Count++;
		}

		/// <summary>
		/// Removes the first item from the heap. Since this is a maxheap it will have the highest value which is determined by the implementation of the <see cref="IComparable{T}"/> interface.
		/// </summary>
		/// <returns></returns>
		public T RemoveFirst()
		{
			var firstItem = _items[0];
			Count--;
			_items[0] = _items[Count];
			_items[0].HeapIndex = 0;
			SortDown(_items[0]);
			return firstItem;
		}

		/// <summary>
		/// Returns true if this heap contains the <paramref name="item"/>
		/// </summary>
		/// <param name="item"></param>
		/// <returns></returns>
		public bool Contains(T item)
		{
			if (item.HeapIndex < 0 || item.HeapIndex >= Count) return false;
			return Equals(_items[item.HeapIndex], item);
		}

		private void SortDown(T item)
		{
			while (true)
			{
				var childIndexLeft = item.HeapIndex * 2 + 1;
				var childIndexRight = childIndexLeft + 1;

				if (childIndexLeft < Count)
				{
					var swapIndex = childIndexLeft;

					if (childIndexRight < Count)
					{
						if (_items[childIndexLeft].CompareTo(_items[childIndexRight]) < 0)
						{
							swapIndex = childIndexRight;
						}
					}

					if (item.CompareTo(_items[swapIndex]) < 0)
					{
						Swap(item, _items[swapIndex]);
					}
					else
					{
						return;
					}
				}
				else
				{
					return;
				}
			}
		}

		private void SortUp(T item)
		{
			var parentIndex = (item.HeapIndex - 1) / 2;

			while (true)
			{
				var parentItem = _items[parentIndex];
				if (item.CompareTo(parentItem) > 0)
				{
					Swap(item, parentItem);
				}
				else
				{
					break;
				}

				parentIndex = (item.HeapIndex - 1) / 2;
			}
		}

		private void Swap(T itemA, T itemB)
		{
			var itemAIndex = itemA.HeapIndex;
			itemA.HeapIndex = itemB.HeapIndex;
			itemB.HeapIndex = itemAIndex;
			_items[itemB.HeapIndex] = itemB;
			_items[itemA.HeapIndex] = itemA;
		}
	}
}
