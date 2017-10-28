using System;

namespace Pathfindax.Collections
{
	/// <summary>
	/// Interface for objects that will be used in a <see cref="MinHeap{T}"/>
	/// </summary>
	/// <typeparam name="T"></typeparam>
	public interface IHeapItem<in T> : IComparable<T>
		where T : class
	{
		/// <summary>
		/// The index of the item in the <see cref="MinHeap{T}"/>
		/// </summary>
		int HeapIndex { get; set; }
	}
}
