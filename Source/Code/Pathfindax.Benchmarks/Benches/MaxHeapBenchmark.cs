using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Attributes.Jobs;
using Pathfindax.Collections;

namespace Pathfindax.Benchmarks
{
	[SimpleJob(invocationCount: 200000, targetCount: 10)]
	public class MaxHeapBenchmark
	{
		const int Capacity = 15000000;
		private MaxHeap<ValueHeapItem<int>> AddMaxHeap;
		private MaxHeap<ValueHeapItem<int>> RemoveFirstMaxHeap;
		private MaxHeap<ValueHeapItem<int>> ContainsMaxHeap;
		private ValueHeapItem<int> SomeContainedValue;

		[GlobalSetup(Target = nameof(RemoveFirst))]
		public void SetupRemoveFirst()
		{
			RemoveFirstMaxHeap = new MaxHeap<ValueHeapItem<int>>(Capacity);
			for (int i = 0; i < RemoveFirstMaxHeap.Capacity; i++)
			{
				RemoveFirstMaxHeap.Add(i);
			}
		}

		[GlobalSetup(Target = nameof(Add))]
		public void SetupAdd()
		{
			AddMaxHeap = new MaxHeap<ValueHeapItem<int>>(Capacity);
		}

		[GlobalSetup(Target = nameof(Contains))]
		public void SetupContains()
		{
			ContainsMaxHeap = new MaxHeap<ValueHeapItem<int>>(1);
			ContainsMaxHeap.Add(5);
			SomeContainedValue = ContainsMaxHeap.Peek();
		}

		[Benchmark]
		public ValueHeapItem<int> RemoveFirst()
		{
			return RemoveFirstMaxHeap.RemoveFirst();
		}

		[Benchmark]
		public void Add()
		{
			AddMaxHeap.Add(AddMaxHeap.Count);
		}

		[Benchmark]
		public void Contains()
		{
			ContainsMaxHeap.Contains(SomeContainedValue);
		}
	}
}
