using BenchmarkDotNet.Running;
using System;

namespace Pathfindax.Benchmarks
{
	class Program
	{
		static void Main(string[] args)
		{
			//var foo = new DijkstraAlgorithmBenchmark();
			//foo.Setup();
			//while (true)
			//{
			//	foo.FindPath();
			//}
			BenchmarkRunner.Run<AstarAlgorithmBenchmark>();
			Console.ReadKey();
		}
	}
}