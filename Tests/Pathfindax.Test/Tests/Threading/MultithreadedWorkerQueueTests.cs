using System.Threading;
using NSubstitute;
using Xunit;
using Pathfindax.Threading;

namespace Pathfindax.Test.Tests.Threading
{
	
	public class MultithreadedWorkerQueueTests
	{
		[Fact]
		public void WaitForAllWorkToBeDone_WorkersBusyAllTheTime_Passes()
		{
			var workerQueue = new MultithreadedWorkerQueue<bool>(() =>
			{
				var processer = Substitute.For<IProcesser<bool>>();
				processer.When(x => x.Process(false)).Do(x =>
				{
					Thread.Sleep(100);
				});
				return processer;
			}, 2);

			workerQueue.Start();
			const int amountOfItterations = 50;
			for (var i = 0; i < amountOfItterations; i++)
			{
				workerQueue.Enqueue(false);
			}

			var completed = 0;
			while (completed != amountOfItterations)
			{
				if (workerQueue.TryDequeue(out _))
				{
					completed++;
				}
				Thread.Sleep(10);
			}
			Assert.Equal(completed, amountOfItterations);
		}
	}
}
