using System;
using BenchmarkDotNet.Configs;
using BenchmarkDotNet.Environments;
using BenchmarkDotNet.Jobs;

namespace Pathfindax.Benchmarks
{
	public class BenchmarkConfigAttribute : Attribute, IConfigSource
	{
		public IConfig Config { get; private set; }

		public BenchmarkConfigAttribute(int invocationCount = -1)
		{
			Config = new RyuJitConfig(invocationCount);
		}
	}

	public class RyuJitConfig : ManualConfig
	{
		public RyuJitConfig(int invocationCount)
		{
			// The same, using the .With() factory methods:
			var job = Job.Default
				.With(Platform.X86)
				.With(Jit.RyuJit);
			if (invocationCount > 0) job = job.WithInvocationCount(invocationCount);
			Add(job.WithId("RyuJitConfig"));
		}
	}
}