using BenchmarkDotNet.Attributes;
using Pathfindax.Collections;
using Pathfindax.Test.Tests.Collections;

namespace Pathfindax.Benchmarks
{
	[BenchmarkConfig(300000)]
	public class IndexMaxHeapBenchmark
	{
		const int Capacity = 50000000;
		private IntHeapItem[] _values;
		private IndexMaxHeap<IntHeapItem> AddMaxHeap;
		private IndexMaxHeap<IntHeapItem> RemoveFirstMaxHeap;
		private IndexMaxHeap<IntHeapItem> ContainsMaxHeap;

		[GlobalSetup(Target = nameof(RemoveFirst))]
		public void SetupRemoveFirst()
		{
			_values = new IntHeapItem[Capacity];
			for (int i = 0; i < _values.Length; i++)
			{
				_values[i] = new IntHeapItem(i * 2);
			}
			RemoveFirstMaxHeap = new IndexMaxHeap<IntHeapItem>(_values);
			for (int i = 0; i < RemoveFirstMaxHeap.Capacity; i++)
			{
				RemoveFirstMaxHeap.Add(i);
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
			AddMaxHeap = new IndexMaxHeap<IntHeapItem>(_values);
		}

		[GlobalSetup(Target = nameof(Contains))]
		public void SetupContains()
		{
			_values = new IntHeapItem[Capacity];
			for (int i = 0; i < _values.Length; i++)
			{
				_values[i] = new IntHeapItem(i * 2);
			}
			ContainsMaxHeap = new IndexMaxHeap<IntHeapItem>(_values);
			ContainsMaxHeap.Add(5);
		}

		[Benchmark]
		public IntHeapItem RemoveFirst()
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
