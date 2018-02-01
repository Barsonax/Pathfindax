using System;
using System.Collections;
using System.Collections.ObjectModel;
using System.Linq;
using NUnit.Framework;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Test.Tests.Collections
{
	[TestFixture]
	class RefMaxHeapTests
	{
		[Test, TestCaseSource(typeof(RefMaxHeapTests), nameof(HeapTestCases))]
		public void RefMaxHeap_RemoveFirst(HeapStruct[] items)
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

		[Test]
		public void RefMaxHeap_CheckHeapCondition()
		{
			var items = ConvertArray(new[] { 100, 19, 17, 36, 12, 25, 5, 9, 15, 6, 11, 13, 8, 1, 4, 99, 64 });
			//Create the heap and add the items.
			var heap = new IndexMaxHeap<HeapStruct>(items);
			for (int i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}
			var indexes = heap.Indexes;
			for (int i = 0; i < items.Length; i++)
			{
				Assert.IsTrue(CheckHeapCondition(indexes, items, i));
			}
		}

		[Test, TestCaseSource(typeof(RefMaxHeapTests), nameof(HeapTestCases))]
		public void RefMaxHeap_Contains_True(HeapStruct[] items)
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

		[Test, TestCaseSource(typeof(RefMaxHeapTests), nameof(HeapTestCases))]
		public void RefMaxHeap_Contains_False(HeapStruct[] items)
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

		[Test, TestCaseSource(typeof(RefMaxHeapTests), nameof(HeapTestCases))]
		public void RefMaxHeap_Contains_AddAndRemoveAll(HeapStruct[] items)
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

		private bool CheckHeapCondition(ReadOnlyCollection<int> indexes, HeapStruct[] items, int parentIndex)			
		{
			var parentValue = items[indexes[parentIndex]];
			var childHeapIndexLeft = parentIndex * 2 + 1;
			if (!CheckHeapCondition(parentValue, indexes, items, childHeapIndexLeft))
			{
				return false;
			}
			var childHeapIndexRight = childHeapIndexLeft + 1;
			if (!CheckHeapCondition(parentValue, indexes, items, childHeapIndexRight))
			{
				return false;
			}
			return true;
		}

		private bool CheckHeapCondition(HeapStruct parentValue, ReadOnlyCollection<int> indexes, HeapStruct[] items, int childHeapIndex)
		{
			if (childHeapIndex < indexes.Count)
			{
				var childIndex = indexes[childHeapIndex];
				if (childIndex < 0)
				{
					var childValue = items[childIndex];
					return parentValue.CompareTo(childValue);
				}
				return true;
			}
			return true;
		}

		private HeapStruct[] ConvertArray(int[] values)
		{
			var intValues = new HeapStruct[values.Length];
			for (int i = 0; i < values.Length; i++)
			{
				intValues[i] = new HeapStruct(values[i]);
			}

			return intValues;
		}
	}
}
