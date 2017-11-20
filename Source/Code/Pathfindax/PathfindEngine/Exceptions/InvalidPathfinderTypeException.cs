using System;

namespace Pathfindax.PathfindEngine.Exceptions
{
	public class InvalidPathfinderTypeException : Exception
	{
		public InvalidPathfinderTypeException(string message = null) : base(message) { }
	}
}
