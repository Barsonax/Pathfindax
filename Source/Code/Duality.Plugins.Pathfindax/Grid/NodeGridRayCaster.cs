using System.Collections.Generic;
using System.Linq;
using Duality.Components.Physics;
using Pathfindax.Nodes;

namespace Duality.Plugins.Pathfindax.Grid
{
	public class NodeGridRayCaster
	{
		public PathfindaxCollisionCategory GetCollisionCategory(INode from, INode to)
		{
			RawList<RayCastData> hits;
			var fromWorldPosition = new Vector2(from.WorldPosition.X, from.WorldPosition.Y);
			var toWorldPosition = new Vector2(to.WorldPosition.X, to.WorldPosition.Y);
			RigidBody.RayCast(fromWorldPosition, toWorldPosition, hitData => hitData.Fraction, out hits);
			if (hits.Count > 0)
			{
				var pathfindaxCollisionCategory = CollisionCategory.None;
				foreach (var collisionCategory in hits.Select(x => x.Body.CollisionCategory))
				{
					pathfindaxCollisionCategory = pathfindaxCollisionCategory | collisionCategory;
				}
				return (PathfindaxCollisionCategory)pathfindaxCollisionCategory;
			}
			return PathfindaxCollisionCategory.None;
		}
	}
}

