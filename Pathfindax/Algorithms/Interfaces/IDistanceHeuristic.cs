using Duality;

namespace Pathfindax.Algorithms
{
	public interface IDistanceHeuristic
	{
		float GetDistance(in Vector2 position1, in Vector2 position2);
	}
}