using System;

namespace Pathfindax.Threading
{
	internal interface IQueueReader<T> : IDisposable
	{
		T Dequeue();
		void ReleaseReader();
	}
}