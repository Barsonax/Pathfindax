using Pathfindax.Nodes;

namespace Pathfindax.PathfindEngine
{
	public class CompletedPath
	{
		/// <summary>
		/// The request that was made.
		/// </summary>
		public readonly PathRequest PathRequest;

		/// <summary>
		/// The path.
		/// </summary>
		public readonly ISourceNode[] Path;

		public CompletedPath(ISourceNode[] path, PathRequest pathRequest)
		{
			Path = path;
			PathRequest = pathRequest;
		}
	}
}