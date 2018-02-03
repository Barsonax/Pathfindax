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
			return dstX + dstY + -0.5857864376f * Math.Min(dstX, dstY);
		}
	}
}