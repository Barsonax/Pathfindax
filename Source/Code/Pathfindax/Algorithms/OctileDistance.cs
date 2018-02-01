using System;
using Duality;

namespace Pathfindax.Algorithms
{
	public class OctileDistance : IDistanceHeuristic
	{
		public float GetDistance(in Vector2 position1, in Vector2 position2)
		{
			var dstX = Math.Abs(position1.X - position2.X);
			var dstY = Math.Abs(position1.Y - position2.Y);
			return Math.Min(dstX, dstY) * 1.4142135f + Math.Abs(dstX - dstY);
		}
	}
}