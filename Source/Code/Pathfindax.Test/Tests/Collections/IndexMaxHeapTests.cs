using System.Collections;
using System.Collections.ObjectModel;
using NUnit.Framework;
using Pathfindax.Collections;

namespace Pathfindax.Test.Tests.Collections
{
	[TestFixture]
	class IndexMaxHeapTests
	{
		[Test]
		public void IndexMaxHeap_RemoveFirst_LIFO()
		{
			var items = new[] { new HeapStruct(1), new HeapStruct(1), new HeapStruct(1) };
			//Create the heap and add the items.
			var heap = new IndexMaxHeap<HeapStruct>(items);
			for (var i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}

			//Check if the elements are returned in LIFO order
			for (var i = items.Length - 1; i >= 0; i--)
			{
				var index = heap.RemoveFirst();
				Assert.IsTrue(index == i);
			}
		}

		[Test, TestCaseSource(typeof(IndexMaxHeapTests), nameof(HeapTestCases))]
		public void IndexMaxHeap_RemoveFirst(HeapStruct[] items)
		{
			//Create the heap and add the items.
			var heap = new IndexMaxHeap<HeapStruct>(items);
			for (var i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}

			//Check if the items are in the correct order.
			var previousValue = int.MaxValue;
			for (var i = 0; i < items.Length; i++)
			{
				var value = items[heap.RemoveFirst()].Value;
				if (value <= previousValue) previousValue = value;
				else Assert.Fail($"Value {value} is bigger than previous value {previousValue}");
			}
		}

		[Test, TestCaseSource(typeof(IndexMaxHeapTests), nameof(HeapTestCases))]
		public void IndexMaxHeap_CheckHeapCondition(HeapStruct[] items)
		{
			//Create the heap and add the items.
			var heap = new IndexMaxHeap<HeapStruct>(items);
			for (int i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}
			var indexes = heap.Indexes;
			for (int i = 0; i < items.Length; i++)
			{
				CheckHeapCondition(indexes, items, i);
			}
		}

		[Test, TestCaseSource(typeof(IndexMaxHeapTests), nameof(HeapTestCases))]
		public void IndexMaxHeap_Contains_True(HeapStruct[] items)
		{
			//Create the heap and add the items.
			var heap = new IndexMaxHeap<HeapStruct>(items);
			for (var i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}

			//Check if all added items are contained in the heap.
			for (var i = 0; i < items.Length; i++)
			{
				Assert.IsTrue(heap.Contains(i), $"Contains returned false for item {items[i]}");
			}
		}

		[Test, TestCaseSource(typeof(IndexMaxHeapTests), nameof(HeapTestCases))]
		public void IndexMaxHeap_Contains_False(HeapStruct[] items)
		{
			//Create the heap and add the items except the last one.
			var heap = new IndexMaxHeap<HeapStruct>(items);
			for (var i = 0; i < items.Length - 1; i++)
			{
				heap.Add(i);
			}

			//Check if the last one returns false
			var item = items[items.Length - 1];
			Assert.IsFalse(heap.Contains(items.Length - 1), $"Contains returned true for item {item}");
		}

		[Test, TestCaseSource(typeof(IndexMaxHeapTests), nameof(HeapTestCases))]
		public void IndexMaxHeap_Contains_AddAndRemoveAll(HeapStruct[] items)
		{
			//Create the heap and add the items except the last one.
			var heap = new IndexMaxHeap<HeapStruct>(items);
			for (var i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}

			while (heap.Count > 0)
			{
				heap.RemoveFirst();
			}

			for (var i = 0; i < items.Length; i++)
			{
				Assert.IsFalse(heap.Contains(i), $"Contains returned true for index {i}");
			}
		}

		public static IEnumerable HeapTestCases
		{
			get
			{
				yield return GenerateHeapTestCase(3, 5, 1);
				yield return GenerateHeapTestCase(0, 1, 2);
				yield return GenerateHeapTestCase(10, 9, 8);
				yield return GenerateHeapTestCase(100, 10, 1);
				yield return GenerateHeapTestCase(58, 72, 1, 0, 5342, 5932, 9999);
				yield return GenerateHeapTestCase(0, 1, 1, 2, 2, 3, 4, 5, 6, 6);
				yield return GenerateHeapTestCase(0, 1, 1, 1, 1, 1, 1, 1, 6, 6);
				yield return GenerateHeapTestCase(0, 1, 1, 6);
				yield return GenerateHeapTestCase(0, 1, 2, 1, 4, 1, 6, 1, 6, 6, 10, 16, 10, 0);
			}
		}

		private static TestCaseData GenerateHeapTestCase(params int[] values)
		{
			var testCaseData = new HeapStruct[values.Length];
			for (var i = 0; i < values.Length; i++)
			{
				testCaseData[i] = new HeapStruct(values[i]);
			}
			return new TestCaseData(new[] { testCaseData }).SetName($"Values: {string.Join(", ", values)}");
		}

		private void CheckHeapCondition(ReadOnlyCollection<int> indexes, HeapStruct[] items, int parentIndex)
		{
			var parentValue = items[indexes[parentIndex]];
			var childHeapIndexLeft = parentIndex * 2 + 1;
			CheckHeapCondition(parentValue, indexes, items, childHeapIndexLeft);

			var childHeapIndexRight = childHeapIndexLeft + 1;
			CheckHeapCondition(parentValue, indexes, items, childHeapIndexRight);
		}

		private void CheckHeapCondition(HeapStruct parentValue, ReadOnlyCollection<int> indexes, HeapStruct[] items, int childHeapIndex)
		{
			if (childHeapIndex < indexes.Count)
			{
				var childIndex = indexes[childHeapIndex];
				if (childIndex >= 0)
				{
					var childValue = items[childIndex];
					Assert.IsTrue(parentValue.Value >= childValue.Value);
				}
			}
		}
	}
}
