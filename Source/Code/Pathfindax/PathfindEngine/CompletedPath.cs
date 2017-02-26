using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine
{
	public class CompletedPath
	{
		/// <summary>
		/// The request that was made.
		/// </summary>
		public PathRequest PathRequest;

		/// <summary>
		/// The path.
		/// </summary>
		public readonly PositionF[] Path;

		public CompletedPath(PositionF[] path, PathRequest pathRequest)
		{
			Path = path;
			PathRequest = pathRequest;
		}
	}
}