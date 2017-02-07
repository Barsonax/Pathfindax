using System;
using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine
{
	public class CompletedPath
	{
		/// <summary>
		/// The path.
		/// </summary>
		public readonly PositionF[] Path;

		/// <summary>
		/// The callback that will be called after the pathfinder finds a path or cannot find one.
		/// </summary>
		public readonly Action<CompletedPath> Callback;

		public CompletedPath(PositionF[] path, Action<CompletedPath> callback)
		{
			Path = path;
			Callback = callback;
		}
	}
}