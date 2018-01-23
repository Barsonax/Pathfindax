using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Attributes.Jobs;
using Pathfindax.Collections;

namespace Pathfindax.Benchmarks
{
	[SimpleJob(invocationCount: 600000, targetCount: 10)]
	public class RefMaxHeapBenchmark
	{
		const int Capacity = 50000000;
		private HeapStruct<int>[] _values;
		private RefMaxHeap<HeapStruct<int>> AddMaxHeap;
		private RefMaxHeap<HeapStruct<int>> RemoveFirstMaxHeap;
		private RefMaxHeap<HeapStruct<int>> ContainsMaxHeap;
		private HeapStruct<int> SomeContainedValue;

		[GlobalSetup(Target = nameof(RemoveFirst))]
		public void SetupRemoveFirst()
		{
			_values = new HeapStruct<int>[Capacity];
			for (int i = 0; i < _values.Length; i++)
			{
				_values[i] = new HeapStruct<int>(i * 2, i);
			}
			RemoveFirstMaxHeap = new RefMaxHeap<HeapStruct<int>>(_values);
			for (int i = 0; i < RemoveFirstMaxHeap.Capacity; i++)
			{
				RemoveFirstMaxHeap.Add(i);
			}
		}

		[GlobalSetup(Target = nameof(Add))]
		public void SetupAdd()
		{
			_values = new HeapStruct<int>[Capacity];
			for (int i = 0; i < _values.Length; i++)
			{
				_values[i] = new HeapStruct<int>(i * 2, i);
			}
			AddMaxHeap = new RefMaxHeap<HeapStruct<int>>(_values);
		}

		[GlobalSetup(Target = nameof(Contains))]
		public void SetupContains()
		{
			_values = new HeapStruct<int>[Capacity];
			for (int i = 0; i < _values.Length; i++)
			{
				_values[i] = new HeapStruct<int>(i * 2, i);
			}
			ContainsMaxHeap = new RefMaxHeap<HeapStruct<int>>(_values);
			ContainsMaxHeap.Add(5);
			SomeContainedValue = ContainsMaxHeap.Peek();
		}

		[Benchmark]
		public HeapStruct<int> RemoveFirst()
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
