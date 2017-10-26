using System.Collections.Generic;
using System.Threading;
using NSubstitute;
using NUnit.Framework;
using Pathfindax.Threading;

namespace Pathfindax.Test.Tests
{
	[TestFixture]
	public class MultithreadedWorkerQueueTests
	{
		[Test]
		public void WaitForAllWorkToBeDone_WorkersBusyAllTheTime_Passes()
		{
			var workerQueue = new MultithreadedWorkerQueue<bool>(() =>
			{
				var processer = Substitute.For<IProcesser<bool>>();
				processer.When(x => x.Process(false)).Do(x =>
				{
					var a = 1;
					var b = 2;
					for (var i = 0; i < 20000000; i++) //Simulates some work.
					{
						var c = a + b;
					}
				});
				return processer;
			}, 2);

			workerQueue.Start();
			var amountOfItterations = 50;
			for (var i = 0; i < amountOfItterations; i++)
			{
				workerQueue.Enqueue(false);
			}

			var completed = 0;
			while (completed != amountOfItterations)
			{
				bool result;
				if (workerQueue.TryDequeue(out result))
				{
					completed++;
				}
				Thread.Sleep(10);
			}
			Assert.AreEqual(completed, amountOfItterations);
		}
	}
}
