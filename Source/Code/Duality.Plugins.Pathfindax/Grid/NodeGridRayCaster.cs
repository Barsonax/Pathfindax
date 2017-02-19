using System.Linq;
using Duality.Components.Physics;
using Pathfindax.Nodes;

namespace Duality.Plugins.Pathfindax.Grid
{
	public class NodeGridRayCaster
	{
		public PathfindaxCollisionCategory GetConnectionCollisionCategory(INode from, INode to)
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

		public bool Contains(Vector2 inPoint, Vector2[] vertices)
		{
			var oddNodes = false;
			var i = 0;
			var j = vertices.Length - 1;

			for (i = 0; i < vertices.Length; i++)
			{
				if ((vertices[i].Y < inPoint.Y && vertices[j].Y >= inPoint.Y || vertices[j].Y < inPoint.Y && vertices[i].Y >= inPoint.Y) && (vertices[i].X <= inPoint.X || vertices[j].X <= inPoint.X))
				{
					oddNodes ^= (vertices[i].X + (inPoint.Y - vertices[i].Y) / (vertices[j].Y - vertices[i].Y) * (vertices[j].X - vertices[i].X) < inPoint.X);
				}

				j = i;
			}

			return oddNodes;
		}
	}
}

