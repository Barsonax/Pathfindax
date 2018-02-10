using BenchmarkDotNet.Attributes;
using Pathfindax.Collections;
using Pathfindax.Test.Tests.Collections;

namespace Pathfindax.Benchmarks
{
	[BenchmarkConfig(300000)]
	public class IndexMinHeapBenchmark
	{
		const int Capacity = 50000000;
		private IntHeapItem[] _values;
		private IndexMinHeap<IntHeapItem> _addMinHeap;
		private IndexMinHeap<IntHeapItem> _removeFirstMinHeap;
		private IndexMinHeap<IntHeapItem> _containsMinHeap;

		[GlobalSetup(Target = nameof(RemoveFirst))]
		public void SetupRemoveFirst()
		{
			_values = new IntHeapItem[Capacity];
			for (int i = 0; i < _values.Length; i++)
			{
				_values[i] = new IntHeapItem(i * 2);
			}
			_removeFirstMinHeap = new IndexMinHeap<IntHeapItem>(_values);
			for (int i = 0; i < _removeFirstMinHeap.Capacity; i++)
			{
				_removeFirstMinHeap.Add(i);
			}
		}

		[GlobalSetup(Target = nameof(Add))]
		public void SetupAdd()
		{
			_values = new IntHeapItem[Capacity];
			for (int i = 0; i < _values.Length; i++)
			{
				_values[i] = new IntHeapItem(i * 2);
			}
			_addMinHeap = new IndexMinHeap<IntHeapItem>(_values);
		}

		[GlobalSetup(Target = nameof(Contains))]
		public void SetupContains()
		{
			_values = new IntHeapItem[Capacity];
			for (int i = 0; i < _values.Length; i++)
			{
				_values[i] = new IntHeapItem(i * 2);
			}
			_containsMinHeap = new IndexMinHeap<IntHeapItem>(_values);
			_containsMinHeap.Add(5);
		}

		[Benchmark]
		public IntHeapItem RemoveFirst()
		{
			return _values[_removeFirstMinHeap.RemoveFirst()];
		}

		[Benchmark]
		public void Add()
		{
			_addMinHeap.Add(_addMinHeap.Count);
		}

		[Benchmark]
		public void Contains()
		{
			_containsMinHeap.Contains(0);
		}
	}
}
