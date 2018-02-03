using BenchmarkDotNet.Attributes;
using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Benchmarks
{
	[BenchmarkConfig(300000)]
	public class IndexMaxHeapBenchmark
	{
		const int Capacity = 50000000;
		private HeapStruct[] _values;
		private IndexMaxHeap<HeapStruct> AddMaxHeap;
		private IndexMaxHeap<HeapStruct> RemoveFirstMaxHeap;
		private IndexMaxHeap<HeapStruct> ContainsMaxHeap;
		private HeapStruct SomeContainedValue;

		[GlobalSetup(Target = nameof(RemoveFirst))]
		public void SetupRemoveFirst()
		{
			_values = new HeapStruct[Capacity];
			for (int i = 0; i < _values.Length; i++)
			{
				_values[i] = new HeapStruct(i * 2);
			}
			RemoveFirstMaxHeap = new IndexMaxHeap<HeapStruct>(_values);
			for (int i = 0; i < RemoveFirstMaxHeap.Capacity; i++)
			{
				RemoveFirstMaxHeap.Add(i);
			}
		}

		[GlobalSetup(Target = nameof(Add))]
		public void SetupAdd()
		{
			_values = new HeapStruct[Capacity];
			for (int i = 0; i < _values.Length; i++)
			{
				_values[i] = new HeapStruct(i * 2);
			}
			AddMaxHeap = new IndexMaxHeap<HeapStruct>(_values);
		}

		[GlobalSetup(Target = nameof(Contains))]
		public void SetupContains()
		{
			_values = new HeapStruct[Capacity];
			for (int i = 0; i < _values.Length; i++)
			{
				_values[i] = new HeapStruct(i * 2);
			}
			ContainsMaxHeap = new IndexMaxHeap<HeapStruct>(_values);
			ContainsMaxHeap.Add(5);
			SomeContainedValue = _values[ContainsMaxHeap.Peek()];
		}

		[Benchmark]
		public HeapStruct RemoveFirst()
		{
			return _values[RemoveFirstMaxHeap.RemoveFirst()];
		}

		[Benchmark]
		public void Add()
		{
			AddMaxHeap.Add(AddMaxHeap.Count);
		}

		[Benchmark]
		public void Contains()
		{
			ContainsMaxHeap.Contains(0);
		}
	}
}
