using System;
using System.Collections;
using System.Collections.ObjectModel;
using System.Linq;
using NUnit.Framework;
using Pathfindax.Collections;

namespace Pathfindax.Test.Tests.Collections
{
	[TestFixture]
	class RefMaxHeapTests
	{
		[Test, TestCaseSource(typeof(RefMaxHeapTests), nameof(HeapTestCases))]
		public void RefMaxHeap_RemoveFirst(HeapStruct<int>[] items)
		{
			//Create the heap and add the items.
			var heap = new RefMaxHeap<HeapStruct<int>>(items);
			for (var i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}

			//Check if the items are in the correct order.
			var previousValue = int.MaxValue;
			for (var i = 0; i < items.Length; i++)
			{
				var value = heap.RemoveFirst().Value;
				if (value <= previousValue) previousValue = value;
				else Assert.Fail($"Value {value} is bigger than previous value {previousValue}");
			}
		}

		[Test]
		public void RefMaxHeap_CheckHeapCondition()
		{
			var items = ConvertArray(new[] { 100, 19, 17, 36, 12, 25, 5, 9, 15, 6, 11, 13, 8, 1, 4, 99, 64 });
			//Create the heap and add the items.
			var heap = new RefMaxHeap<HeapStruct<int>>(items);
			for (int i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}

			var indexes = heap.Indexes;
			Assert.AreEqual(100, items[indexes[0]].Value);

			for (int i = 0; i < items.Length; i++)
			{
				Assert.IsTrue(CheckHeapCondition(indexes, items, i));
			}
		}

		[Test, TestCaseSource(typeof(RefMaxHeapTests), nameof(HeapTestCases))]
		public void RefMaxHeap_Contains_True(HeapStruct<int>[] items)
		{
			//Create the heap and add the items.
			var heap = new RefMaxHeap<HeapStruct<int>>(items);
			for (var i = 0; i < items.Length; i++)
			{
				heap.Add(i);
			}

			//Check if all added items are contained in the heap.
			for (var i = 0; i < items.Length; i++)
			{
				Assert.IsTrue(heap.Contains(items[i]), $"Contains returned false for item {items[i]}");
			}
		}

		[Test, TestCaseSource(typeof(RefMaxHeapTests), nameof(HeapTestCases))]
		public void RefMaxHeap_Contains_False(HeapStruct<int>[] items)
		{
			//Create the heap and add the items except the last one.
			var heap = new RefMaxHeap<HeapStruct<int>>(items);
			for (var i = 0; i < items.Length - 1; i++)
			{
				heap.Add(i);
			}

			//Check if the last one returns false
			var item = items[items.Length - 1];
			Assert.IsFalse(heap.Contains(item), $"Contains returned true for item {item}");
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
			var testCaseData = new HeapStruct<int>[values.Length];
			for (var i = 0; i < values.Length; i++)
			{
				testCaseData[i] = new HeapStruct<int>(values[i], i);
			}
			return new TestCaseData(new[] { testCaseData }).SetName($"Values: {string.Join(", ", values)}");
		}

		private bool CheckHeapCondition<TValue>(ReadOnlyCollection<int> indexes, HeapStruct<TValue>[] items, int parentIndex)
			where TValue : IComparable<TValue>, IEquatable<TValue>
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

		private bool CheckHeapCondition<TValue>(HeapStruct<TValue> parentValue, ReadOnlyCollection<int> indexes, HeapStruct<TValue>[] items, int childHeapIndex)
			where TValue : IComparable<TValue>, IEquatable<TValue>
		{
			if (childHeapIndex < indexes.Count)
			{
				var childIndex = indexes[childHeapIndex];
				if (childIndex != -1)
				{
					var childValue = items[childIndex];
					return parentValue.CompareTo(childValue) >= 0;
				}
				return true;
			}
			return true;
		}

		private HeapStruct<TValue>[] ConvertArray<TValue>(TValue[] values)
			where TValue : IComparable<TValue>, IEquatable<TValue>
		{
			var intValues = new HeapStruct<TValue>[values.Length];
			for (int i = 0; i < values.Length; i++)
			{
				intValues[i] = new HeapStruct<TValue>(values[i], i);
			}

			return intValues;
		}
	}
}
