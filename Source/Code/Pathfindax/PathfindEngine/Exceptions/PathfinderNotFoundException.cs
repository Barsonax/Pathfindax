using System;

namespace Pathfindax.PathfindEngine.Exceptions
{
	public class PathfinderNotFoundException : Exception
	{
		public PathfinderNotFoundException(string message = null) : base(message) { }
	}
}
