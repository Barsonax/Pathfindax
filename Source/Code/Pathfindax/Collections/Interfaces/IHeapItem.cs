using System;

namespace Pathfindax.Collections
{
	public interface IHeapItem<in T> : IComparable<T>
	{
		/// <summary>
		/// The index of the item in the <see cref="MinHeap{T}"/>
		/// </summary>
		int HeapIndex { get; set; }
	}
}
