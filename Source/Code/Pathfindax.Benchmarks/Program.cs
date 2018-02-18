using BenchmarkDotNet.Running;
using System;
using System.Linq;

namespace Pathfindax.Benchmarks
{
	class Program
	{
		static void Main(string[] args)
		{
			//var foo = new AstarAlgorithmBenchmark();
			//foo.Setup();
			//foo.FindLongPath();
			//Console.WriteLine(foo._algorithm.ClosedSet.Count());
			//Console.WriteLine(foo._algorithm.OpenSet.Count());
			//Console.ReadKey();
			BenchmarkRunner.Run<AstarAlgorithmBenchmark>();
			Console.ReadKey();
		}
	}
}