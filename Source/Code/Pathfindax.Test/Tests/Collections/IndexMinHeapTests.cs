using System;
using System.Collections;
using System.Linq;
using NUnit.Framework;
using Pathfindax.Collections;

namespace Pathfindax.Test.Tests.Collections
{
	[TestFixture]
	class IndexMinHeapTests
	{
		[Test]
		public void IndexMinHeap_RemoveFirst_LIFO()
		{
			var items = new[] { new IntHeapItem(1), new IntHeapItem(1), new IntHeapItem(1) };
			//Create the heap and add the items.
			var heap = new IndexMinHeap<IntHeapItem>(items);
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

		[Test, TestCaseSource(typeof(IndexMinHeapTests), nameof(HeapTestCases))]
		public void IndexMinHeap_RemoveFirst(IntHeapItem[] items)
		{
			//Create the heap and add the items.
			var heap = new IndexMinHeap<IntHeapItem>(items);
			for (var i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}

			//Check if the items are in the correct order.
			var previousValue = int.MinValue;
			for (var i = 0; i < items.Length; i++)
			{
				var value = items[heap.RemoveFirst()].Value;
				if (value >= previousValue) previousValue = value;
				else Assert.Fail($"Value {value} is smaller than previous value {previousValue}");
			}
		}

		[Test, TestCaseSource(typeof(IndexMinHeapTests), nameof(HeapTestCases))]
		public void IndexMinHeap_CheckHeapCondition(IntHeapItem[] items)
		{
			//Create the heap and add the items.
			var heap = new IndexMinHeap<IntHeapItem>(items);
			for (int i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}
			var indexes = heap.Select(i => items[i]).ToArray();
			for (int i = 0; i < items.Length; i++)
			{
				CheckHeapCondition(indexes, i);
			}
		}

		[Test, TestCaseSource(typeof(IndexMinHeapTests), nameof(HeapTestCases))]
		public void IndexMinHeap_Contains_True(IntHeapItem[] items)
		{
			//Create the heap and add the items.
			var heap = new IndexMinHeap<IntHeapItem>(items);
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

		[Test, TestCaseSource(typeof(IndexMinHeapTests), nameof(HeapTestCases))]
		public void IndexMinHeap_Contains_False(IntHeapItem[] items)
		{
			//Create the heap and add the items except the last one.
			var heap = new IndexMinHeap<IntHeapItem>(items);
			for (var i = 0; i < items.Length - 1; i++)
			{
				heap.Add(i);
			}

			//Check if the last one returns false
			var item = items[items.Length - 1];
			Assert.IsFalse(heap.Contains(items.Length - 1), $"Contains returned true for item {item}");
		}

		[Test, TestCaseSource(typeof(IndexMinHeapTests), nameof(HeapTestCases))]
		public void IndexMinHeap_Contains_AddAndRemoveAll(IntHeapItem[] items)
		{
			//Create the heap and add the items except the last one.
			var heap = new IndexMinHeap<IntHeapItem>(items);
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
			var testCaseData = new IntHeapItem[values.Length];
			for (var i = 0; i < values.Length; i++)
			{
				testCaseData[i] = new IntHeapItem(values[i]);
			}
			return new TestCaseData(new[] { testCaseData }).SetName($"Values: {string.Join(", ", values)}");
		}

		private void CheckHeapCondition(IntHeapItem[] indexes, int parentIndex)
		{
			var parentValue = indexes[parentIndex];
			var childHeapIndexLeft = parentIndex * 2 + 1;
			CheckHeapCondition(parentValue, indexes, childHeapIndexLeft);

			var childHeapIndexRight = childHeapIndexLeft + 1;
			CheckHeapCondition(parentValue, indexes, childHeapIndexRight);
		}

		private void CheckHeapCondition(IntHeapItem parentValue, IntHeapItem[] indexes, int childHeapIndex)
		{
			if (childHeapIndex < indexes.Length)
			{
				var childValue = indexes[childHeapIndex];
				Assert.IsTrue(parentValue.Value <= childValue.Value);
			}
		}
	}
}
