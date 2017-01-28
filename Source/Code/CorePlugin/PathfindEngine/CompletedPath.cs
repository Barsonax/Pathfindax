using System;
using Duality;

namespace Pathfindax.PathfindEngine
{
	public class CompletedPath
	{
		public Vector2[] Path;
		public bool Succes;
		public Action<CompletedPath> Callback;

		public CompletedPath(Vector2[] path, bool succes, Action<CompletedPath> callback)
		{
			Path = path;
			Succes = succes;
			Callback = callback;
		}
	}
}