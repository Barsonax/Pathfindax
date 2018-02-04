using Pathfindax.Collections;

namespace Pathfindax.Test.Tests.Collections
{
	public struct IntHeapItem : IPriorityComparable<IntHeapItem>
	{
		public int Value { get; }

		public IntHeapItem(int value)
		{
			Value = value;
		}

		public override string ToString()
		{
			return Value.ToString();
		}

		public bool HasHigherPriority(in IntHeapItem other)
		{
			return Value > other.Value;
		}
	}
}
