using System;
using System.Runtime.CompilerServices;

namespace Pathfindax.Collections
{
	/// <summary>
	/// A fast maxheap that is used as a priority queue for pathfinding.
	/// Does not work directly with structs. If you need to use structs with this collection you have to wrap it in a <see cref="ValueHeapItem{T}"/>.
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
		/// Removes the first item from the heap. 
		/// Since this is a maxheap it will have the highest value which is determined by the implementation of the <see cref="IComparable{T}"/> interface.
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
		/// Returns the first item from the heap but does not remove it.
		/// </summary>
		/// <returns></returns>
		public T Peek()
		{
			return _items[0];
		}

		/// <summary>
		/// Returns true if this heap contains the <paramref name="item"/>
		/// </summary>
		/// <param name="item"></param>
		/// <returns></returns>
		public bool Contains(T item)
		{
			var heapIndex = item.HeapIndex;
			if (heapIndex < 0 || heapIndex >= Count) return false;
			return Equals(_items[heapIndex], item);
		}

		private void SortDown(T item)
		{
			var itemIndex = item.HeapIndex;
			while (true)
			{
				var childIndexLeft = itemIndex * 2 + 1;
				var childIndexRight = childIndexLeft + 1;

				if (childIndexLeft < Count)
				{
					var swapIndex = childIndexLeft;

					if (childIndexRight < Count && _items[childIndexLeft].CompareTo(_items[childIndexRight]) < 0)
					{
						swapIndex = childIndexRight;
					}

					if (item.CompareTo(_items[swapIndex]) < 0)
					{
						Swap(item, itemIndex, _items[swapIndex], swapIndex);
						itemIndex = swapIndex;
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
			var itemIndex = item.HeapIndex;
			var parentIndex = (itemIndex - 1) / 2;

			while (true)
			{
				var parentItem = _items[parentIndex];
				if (item.CompareTo(parentItem) > 0)
				{
					Swap(item, itemIndex, parentItem, parentIndex);
					itemIndex = parentIndex;
				}
				else
				{
					break;
				}

				parentIndex = (parentIndex - 1) / 2;
			}
		}

		private void Swap(T itemA, int itemAIndex, T itemB, int itemBIndex)
		{
			itemA.HeapIndex = itemBIndex;
			itemB.HeapIndex = itemAIndex;
			_items[itemAIndex] = itemB;
			_items[itemBIndex] = itemA;
		}
	}

	/// <summary>
	/// Wraps a value type allowing it to be used in a <see cref="MaxHeap{T}"/>
	/// </summary>
	/// <typeparam name="T"></typeparam>
	public class ValueHeapItem<T> : IHeapItem<ValueHeapItem<T>>
	where T : struct, IComparable<T>
	{
		public int HeapIndex { get; set; }
		public T Value { get; }

		public ValueHeapItem(T value)
		{
			Value = value;
			HeapIndex = -1;
		}

		public int CompareTo(ValueHeapItem<T> other)
		{
			var compare = Value.CompareTo(other.Value);
			return compare;
		}

		public static implicit operator T(ValueHeapItem<T> valueHeapItem)
		{
			return valueHeapItem.Value;
		}

		public static implicit operator ValueHeapItem<T>(T value)
		{
			return new ValueHeapItem<T>(value);
		}

		public override string ToString()
		{
			return Value.ToString();
		}
	}
}
