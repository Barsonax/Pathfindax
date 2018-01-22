using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace Pathfindax.Collections
{
	/// <summary>
	/// A fast maxheap that is used as a priority queue for pathfinding.
	/// Does not store the items itself but keeps references to them with array indexes.
	/// </summary>
	/// <typeparam name="T"></typeparam>
	public class RefMaxHeap<T>
		where T : struct , IHeapItem<T>, IIndexProvider
	{
		/// <summary>
		/// The current amount of items in the heap.
		/// </summary>
		public int Count { get; private set; }

		public int Capacity => _indexes.Length;
		public ReadOnlyCollection<int> Indexes => new ReadOnlyCollection<int>(_indexes);
		private readonly int[] _indexes;
		private readonly T[] _array;

		/// <summary>
		/// Creates a new <see cref="MaxHeap{T}"/>./>
		/// </summary>
		/// <param name="array"></param>
		public RefMaxHeap(T[] array)
		{
			_array = array;
			_indexes = new int[array.Length];
			for (int i = 0; i < _indexes.Length; i++)
			{
				_indexes[i] = -1;
			}
		}

		/// <summary>
		/// Adds the item that is at the specified <paramref name="index"/> to the heap
		/// </summary>
		/// <exception cref="IndexOutOfRangeException">If the interal array is full</exception>
		/// <param name="index"></param>
		public void Add(int index)
		{
			ref var item = ref _array[index];
			item.HeapIndex = Count;
			_indexes[Count] = item.Index;
			SortUp(ref item);
			Count++;
		}

		/// <summary>
		/// Removes the first item from the heap. 
		/// Since this is a maxheap it will have the highest value which is determined by the implementation of the <see cref="IComparable{T}"/> interface.
		/// </summary>
		/// <returns></returns>
		public ref T RemoveFirst()
		{
			ref var firstItem = ref _array[_indexes[0]];
			Count--;
			_indexes[0] = _indexes[Count];
			_array[_indexes[0]].HeapIndex = 0;
			SortDown(ref _array[_indexes[0]]);
			return ref firstItem;
		}

		/// <summary>
		/// Returns the first item from the heap but does not remove it.
		/// </summary>
		/// <returns></returns>
		public T Peek()
		{
			return _array[_indexes[0]];
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
			var arrayIndex = _indexes[heapIndex];
			if (arrayIndex != -1)
			{
				return Equals(_array[arrayIndex], item);
			}

			return false;
		}

		private void SortDown(ref T item)
		{
			var itemIndex = item.HeapIndex;
			while (true)
			{
				var childIndexLeft = itemIndex * 2 + 1;
				var childIndexRight = childIndexLeft + 1;

				if (childIndexLeft < Count)
				{
					var swapIndex = childIndexLeft;
					
					if (childIndexRight < Count && _array[_indexes[childIndexLeft]].CompareTo(_array[_indexes[childIndexRight]]) < 0)
					{
						swapIndex = childIndexRight;
					}
					
					if (item.CompareTo(_array[_indexes[swapIndex]]) < 0)
					{
						Swap(ref item, itemIndex, ref _array[_indexes[swapIndex]], swapIndex);
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

		private void SortUp(ref T item)
		{
			var itemIndex = item.HeapIndex;
			var parentIndex = (itemIndex - 1) / 2;

			while (true)
			{
				ref var parentItem = ref _array[_indexes[parentIndex]];
				if (item.CompareTo(parentItem) > 0)
				{
					Swap(ref item, itemIndex, ref parentItem, parentIndex);
					itemIndex = parentIndex;
				}
				else
				{
					break;
				}

				parentIndex = (parentIndex - 1) / 2;
			}
		}

		private void Swap(ref T itemA, int itemAHeapIndex, ref T itemB, int itemBHeapIndex)
		{
			itemB.HeapIndex = itemAHeapIndex;
			_indexes[itemAHeapIndex] = itemB.Index;

			itemA.HeapIndex = itemBHeapIndex;
			_indexes[itemBHeapIndex] = itemA.Index;
		}
	}
}
