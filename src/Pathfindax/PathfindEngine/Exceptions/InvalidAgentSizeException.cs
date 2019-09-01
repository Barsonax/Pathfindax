using System;

namespace Pathfindax.PathfindEngine.Exceptions
{
	public class InvalidAgentSizeException : Exception
	{
		public InvalidAgentSizeException(string message = null) : base(message) { }
	}
}
