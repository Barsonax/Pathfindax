using System;

namespace Pathfindax.Threading
{
	internal interface IQueueReader<out T> : IDisposable
	{
		T Dequeue();
		void ReleaseReader();
	}
}