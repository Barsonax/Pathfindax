using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Attributes.Jobs;
using BenchmarkDotNet.Running;
using Pathfindax.Collections;
using System;

namespace Pathfindax.Benchmarks
{
	class Program
	{
		static void Main(string[] args)
		{
			BenchmarkRunner.Run<RefMaxHeapBenchmark>();
			Console.ReadKey();
		}
	}


}
