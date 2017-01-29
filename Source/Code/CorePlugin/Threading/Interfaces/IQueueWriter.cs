using System;

namespace Pathfindax.Threading
{
	internal interface IQueueWriter<T> : IDisposable
	{
		void Enqueue(T data);
	}
}