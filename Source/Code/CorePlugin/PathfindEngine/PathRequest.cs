using Duality;

namespace Pathfindax.PathfindEngine
{
	public class PathRequest
	{
		public Vector2 PathStart;
		public Vector2 PathEnd;
		public float Clearance;
		public Vector2[] Path;

		public PathRequest(Vector2 start, Vector2 end, float clearance)
		{
			PathStart = start;
			PathEnd = end;
			Clearance = clearance;
		}
	}
}
