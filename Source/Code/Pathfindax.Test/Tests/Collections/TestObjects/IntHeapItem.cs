using Pathfindax.Collections;

namespace Pathfindax.Test.Tests.Collections
{
	public struct IntHeapItem : IPriority
	{
		public int Value { get; }
		public float Priority => Value;

		public IntHeapItem(int value)
		{
			Value = value;
		}

		public override string ToString()
		{
			return Value.ToString();
		}
	}
}
