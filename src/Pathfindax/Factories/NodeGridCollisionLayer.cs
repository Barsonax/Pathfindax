using Pathfindax.Collections;
using Pathfindax.Nodes;

namespace Pathfindax.Factories
{
	public class NodeGridCollisionLayer
	{
		public PathfindaxCollisionCategory CollisionCategory { get; }
		public Array2D<CollisionDirection> CollisionDirections { get; }

		public NodeGridCollisionLayer(PathfindaxCollisionCategory collisionCategory, int width, int height)
		{
			CollisionCategory = collisionCategory;
			CollisionDirections = new Array2D<CollisionDirection>(width, height);
		}
	}
}