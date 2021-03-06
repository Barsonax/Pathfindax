﻿using System.Collections.Generic;
using System.Linq;
using Xunit;
using Pathfindax.Collections;

namespace Pathfindax.Test.Tests.Collections
{
	public class IndexMinHeapTests
	{
		[Fact]
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
				Assert.True(index == i);
			}
		}

        [Theory, MemberData(nameof(HeapTestCases))]
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
                Assert.True(value >= previousValue, $"Value {value} is smaller than previous value {previousValue}");
                previousValue = value;
			}
		}

        [Theory, MemberData(nameof(HeapTestCases))]
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

		[Theory, MemberData(nameof(HeapTestCases))]
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
				Assert.True(heap.Contains(i), $"Contains returned false for item {items[i]}");
			}
		}

        [Theory, MemberData(nameof(HeapTestCases))]
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
			Assert.False(heap.Contains(items.Length - 1), $"Contains returned true for item {item}");
		}

        [Theory, MemberData(nameof(HeapTestCases))]
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
				Assert.False(heap.Contains(i), $"Contains returned true for index {i}");
			}
		}

        [Theory, MemberData(nameof(HeapTestCases))]
        public void IndexMinHeap_CorrectCapacity(IntHeapItem[] items)
		{
			//Create the heap and add the items.
			var heap = new IndexMinHeap<IntHeapItem>(items);
			for (var i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}
			Assert.Equal(items.Length, heap.Capacity);
		}

        [Theory, MemberData(nameof(HeapTestCases))]
        public void IndexMinHeap_Enumerate(IntHeapItem[] items)
		{
			//Create the heap and add the items.
			var heap = new IndexMinHeap<IntHeapItem>(items);
			var addedIndexes = new List<int>();
			for (var i = 0; i < items.Length; i++)
			{
				heap.Add(i);
				addedIndexes.Add(i);
			}
			Assert.Equal(items.Length, heap.Count);
			//Check if the added indexes are returned when enumerating
			var enumeratedHeap = heap.ToArray();
			Assert.Equal(items.Length, enumeratedHeap.Length);
            Assert.Equal(addedIndexes.OrderBy(x => x), enumeratedHeap.OrderBy(x => x));
		}

		public static IEnumerable<object[]> HeapTestCases
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

		private static object[] GenerateHeapTestCase(params int[] values)
		{
			var testCaseData = new IntHeapItem[values.Length];
			for (var i = 0; i < values.Length; i++)
			{
				testCaseData[i] = new IntHeapItem(values[i]);
			}
			return new[] { testCaseData };
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
				Assert.True(parentValue.Value <= childValue.Value);
			}
		}
	}
}
