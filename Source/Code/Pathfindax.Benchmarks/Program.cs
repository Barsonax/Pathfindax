using BenchmarkDotNet.Running;
using System;

namespace Pathfindax.Benchmarks
{
	class Program
	{
		static void Main(string[] args)
		{
			BenchmarkRunner.Run<AstarAlgorithmBenchmark>();
			Console.ReadKey();
		}
	}
}
