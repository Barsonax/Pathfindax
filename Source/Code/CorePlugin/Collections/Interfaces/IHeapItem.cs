using System;

namespace Pathfindax.Collections
{
	public interface IHeapItem<in T> : IComparable<T>
	{
		int HeapIndex { get; set; }
	}
}
