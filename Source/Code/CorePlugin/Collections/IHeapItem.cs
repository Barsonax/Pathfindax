using System;

namespace Pathfindax.Collections
{
	public interface IHeapItem<T> : IComparable<T>
	{
		int HeapIndex { get; set; }
	}
}
