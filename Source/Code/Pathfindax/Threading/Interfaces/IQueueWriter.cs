using System;

namespace Pathfindax.Threading
{
	internal interface IQueueWriter<in T> : IDisposable
	{
		void Enqueue(T data);
	}
}