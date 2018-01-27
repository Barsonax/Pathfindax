using System;
using System.Collections.ObjectModel;
using Pathfindax.Nodes;

namespace Pathfindax.Collections
{
	public interface IRefComparable<T> : IComparable<T>
	{
		int CompareTo(in T other);
	}

	public interface IRefEquatable<T> : IEquatable<T>
	{
		bool Equals(in T other);
	}

	public interface IRefHeapItem<T> : IRefComparable<T>, IRefEquatable<T>
	{

	}

	/// <summary>
	/// A fast maxheap that is used as a priority queue for pathfinding.
	/// Does not store the items itself but keeps references to them with array indexes.
	/// </summary>
	/// <typeparam name="T"></typeparam>
	public class RefMaxHeap<T>
		where T : IRefHeapItem<T>
	{
		/// <summary>
		/// The current amount of items in the heap.
		/// </summary>
		public int Count { get; private set; }

		public int Capacity => _indexes.Length;
		public ReadOnlyCollection<int> Indexes => new ReadOnlyCollection<int>(_indexes);
		private readonly int[] _indexes;
		private readonly int[] _heapIndexes;
		private T[] _array;

		public RefMaxHeap(T[] array)
		{
			_array = array;
			_indexes = new int[array.Length];
			_heapIndexes = new int[array.Length];
			for (int i = 0; i < _indexes.Length; i++)
			{
				_indexes[i] = -1;
			}
		}

		public RefMaxHeap(int size)
		{
			_indexes = new int[size];
			_heapIndexes = new int[size];
			for (int i = 0; i < _indexes.Length; i++)
			{
				_indexes[i] = -1;
			}
		}

		public void AssignArray(T[] array)
		{
			_array = array;
			Count = 0;
		}

		/// <summary>
		/// Adds the item that is at the specified <paramref name="index"/> to the heap
		/// </summary>
		/// <exception cref="IndexOutOfRangeException">If the interal array is full</exception>
		/// <param name="index"></param>
		public void Add(int index)
		{
			_heapIndexes[index] = Count;
			_indexes[Count] = index;
			SortUp(index);
			Count++;
			
		}

		public void Add(NodePointer index)
		{
			Add(index.Index);
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
			var lastIndex = _indexes[Count];
			_indexes[0] = lastIndex;
			_heapIndexes[lastIndex] = 0;
			SortDown(lastIndex);
			return ref firstItem;
		}

		/// <summary>
		/// Returns the first item from the heap but does not remove it.
		/// </summary>
		/// <returns></returns>
		public ref T Peek()
		{
			return ref _array[_indexes[0]];
		}

		public bool Contains(in T item, int index)
		{
			var heapIndex = _heapIndexes[index];
			if (heapIndex < 0 || heapIndex >= Count) return false;
			return _array[_indexes[heapIndex]].Equals(item);
			
		}

		/// <summary>
		/// Returns true if this heap contains the <paramref name="item"/>
		/// </summary>
		/// <param name="item"></param>
		/// <returns></returns>
		public bool Contains(in T item ,NodePointer index)
		{
			return Contains(item, index.Index);
		}

		private void SortDown(int itemIndex)
		{
			ref var item = ref _array[itemIndex];
			var itemHeapIndex = _heapIndexes[itemIndex];
			while (true)
			{
				var childIndexLeft = itemHeapIndex * 2 + 1;
				var childIndexRight = childIndexLeft + 1;

				if (childIndexLeft < Count)
				{
					var swapHeapIndex = childIndexLeft;
					if (childIndexRight < Count && _array[_indexes[childIndexLeft]].CompareTo(_array[_indexes[childIndexRight]]) < 0)
					{
						swapHeapIndex = childIndexRight;
					}

					var swapItemIndex = _indexes[swapHeapIndex];
					ref var swapItem = ref _array[_indexes[swapHeapIndex]];
					if (item.CompareTo(swapItem) < 0)
					{
						Swap(itemIndex, swapItemIndex);
						itemHeapIndex = swapHeapIndex;
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

		private void SortUp(int itemIndex)
		{
			var parentItemHeapIndex = (_heapIndexes[itemIndex] - 1) / 2;
			ref var item = ref _array[itemIndex];
			while (true)
			{
				var parentItemIndex = _indexes[parentItemHeapIndex];
				ref var parentItem = ref _array[parentItemIndex];
				if (item.CompareTo(parentItem) > 0)
				{
					Swap(itemIndex, parentItemIndex);
				}
				else
				{
					break;
				}

				parentItemHeapIndex = (parentItemHeapIndex - 1) / 2;
			}
		}

		private void Swap(int itemAIndex, int itemBIndex)
		{
			var itemAHeapIndex = _heapIndexes[itemAIndex];
			var itemBHeapIndex = _heapIndexes[itemBIndex];
			_indexes[itemAHeapIndex] = itemBIndex;
			_heapIndexes[itemAIndex] = itemBHeapIndex;

			_indexes[itemBHeapIndex] = itemAIndex;
			_heapIndexes[itemBIndex] = itemAHeapIndex;
		}
	}

	public struct HeapStruct<TValue> : IRefHeapItem<HeapStruct<TValue>>
		where TValue : IComparable<TValue>, IEquatable<TValue>
	{
		public TValue Value { get; }
		public int HeapIndex { get; set; }

		public HeapStruct(TValue value)
		{
			Value = value;
			HeapIndex = -1;
		}

		public override string ToString()
		{
			return Value.ToString();
		}

		public int CompareTo(in HeapStruct<TValue> other)
		{
			return Value.CompareTo(other.Value);
		}

		int IComparable<HeapStruct<TValue>>.CompareTo(HeapStruct<TValue> other)
		{
			return Value.CompareTo(other.Value);
		}

		public override bool Equals(object obj)
		{
			if (obj is HeapStruct<TValue> other)
			{
				return Equals(other);
			}
			return false;
		}

		public bool Equals(in HeapStruct<TValue> other)
		{
			return Value.Equals(other.Value);
		}

		bool IEquatable<HeapStruct<TValue>>.Equals(HeapStruct<TValue> other)
		{
			return Value.Equals(other.Value);
		}
	}
}
