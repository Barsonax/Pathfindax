using System;

namespace Pathfindax.Collections
{
	/// <summary>
	/// Interface for objects that will be used in a <see cref="MaxHeap{T}"/>
	/// </summary>
	/// <typeparam name="T"></typeparam>
	public interface IHeapItem<in T> : IComparable<T>
	{
		/// <summary>
		/// The index of the item in the <see cref="MaxHeap{T}"/>
		/// </summary>
		int HeapIndex { get; set; }
	}
}
