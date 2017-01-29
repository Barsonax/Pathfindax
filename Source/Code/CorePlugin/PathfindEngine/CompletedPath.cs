using System;
using Pathfindax.Primitives;

namespace Pathfindax.PathfindEngine
{
	public class CompletedPath
	{
		public PositionF[] Path;
		public bool Succes;
		public Action<CompletedPath> Callback;

		public CompletedPath(PositionF[] path, bool succes, Action<CompletedPath> callback)
		{
			Path = path;
			Succes = succes;
			Callback = callback;
		}
	}
}