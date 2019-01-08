using System;

namespace Pathfindax.PathfindEngine.Exceptions
{
	public class NoHeuristicException : Exception
	{
		public NoHeuristicException(string message = null) : base(message) { }
	}
}
