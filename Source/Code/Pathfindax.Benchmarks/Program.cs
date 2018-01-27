using BenchmarkDotNet.Running;
using System;

namespace Pathfindax.Benchmarks
{
	class Program
	{
		static void Main(string[] args)
		{
			//var foo = new AstarAlgorithmBenchmark();
			//foo.Setup();
			//while (true)
			//{
			//	foo.FindLongPath();
			//}
			BenchmarkRunner.Run<AstarAlgorithmBenchmark>();
			Console.ReadKey();
		}
	}
}
