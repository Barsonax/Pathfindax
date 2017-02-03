using System.Collections.Generic;
using System.Linq;
using Duality;
using Duality.Components.Physics;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Pathfindax.Duality.Grid
{
	public class NodeGridRayCaster
	{
		/// <summary>
		/// Returns the grid coordinates of direct neighbours that are not reachable.
		/// </summary>
		/// <param name="nodeGrid"></param>
		/// <param name="node"></param>
		/// <param name="collisionCategory"></param>
		/// <returns></returns>
		public IEnumerable<Point2> GetUnreachableNeighbours(INodeGrid<IGridNode> nodeGrid, INode node, CollisionCategory collisionCategory)
		{
			var nodeWorldPosition = new Vector2(node.Position.X + nodeGrid.Offset.X, node.Position.Y + nodeGrid.Offset.Y);
			var nodesToExclude = new HashSet<Point2>();
			RawList<RayCastData> firstHit;
			RigidBody.RayCast(nodeWorldPosition, nodeWorldPosition + new Vector2(0, -nodeGrid.NodeSize.Y), hitData => hitData.Fraction, out firstHit); //Cast upwards
			if (firstHit.Count > 0 && firstHit.Any(x => (collisionCategory & x.Body.CollidesWith) == collisionCategory))
			{
				AddNodeExclude(nodesToExclude, 0, -1);
				AddNodeExclude(nodesToExclude, 1, -1);
				AddNodeExclude(nodesToExclude, -1, -1);
			}
			RigidBody.RayCast(nodeWorldPosition, nodeWorldPosition + new Vector2(0, nodeGrid.NodeSize.Y), hitData => hitData.Fraction, out firstHit); //Cast downwards
			if (firstHit.Count > 0 && firstHit.Any(x => (collisionCategory & x.Body.CollidesWith) == collisionCategory))
			{
				AddNodeExclude(nodesToExclude, 0, 1);
				AddNodeExclude(nodesToExclude, 1, 1);
				AddNodeExclude(nodesToExclude, -1, 1);
			}

			RigidBody.RayCast(nodeWorldPosition, nodeWorldPosition + new Vector2(-nodeGrid.NodeSize.X, 0), hitData => hitData.Fraction, out firstHit); //Cast to the left
			if (firstHit.Count > 0 && firstHit.Any(x => (collisionCategory & x.Body.CollidesWith) == collisionCategory))
			{
				AddNodeExclude(nodesToExclude, -1, 0);
				AddNodeExclude(nodesToExclude, -1, 1);
				AddNodeExclude(nodesToExclude, -1, -1);
			}

			RigidBody.RayCast(nodeWorldPosition, nodeWorldPosition + new Vector2(nodeGrid.NodeSize.X, 0), hitData => hitData.Fraction, out firstHit); //Cast to the right
			if (firstHit.Count > 0 && firstHit.Any(x => (collisionCategory & x.Body.CollidesWith) == collisionCategory))
			{
				AddNodeExclude(nodesToExclude, 1, 0);
				AddNodeExclude(nodesToExclude, 1, 1);
				AddNodeExclude(nodesToExclude, 1, -1);
			}

			RigidBody.RayCast(nodeWorldPosition, nodeWorldPosition + new Vector2(nodeGrid.NodeSize.X, nodeGrid.NodeSize.Y), hitData => hitData.Fraction, out firstHit);
			if (firstHit.Count > 0 && firstHit.Any(x => (collisionCategory & x.Body.CollidesWith) == collisionCategory))
			{
				AddNodeExclude(nodesToExclude, 1, 1);
			}

			RigidBody.RayCast(nodeWorldPosition, nodeWorldPosition + new Vector2(-nodeGrid.NodeSize.X, nodeGrid.NodeSize.Y), hitData => hitData.Fraction, out firstHit);
			if (firstHit.Count > 0 && firstHit.Any(x => (collisionCategory & x.Body.CollidesWith) == collisionCategory))
			{
				AddNodeExclude(nodesToExclude, -1, 1);
			}

			RigidBody.RayCast(nodeWorldPosition, nodeWorldPosition + new Vector2(-nodeGrid.NodeSize.X, -nodeGrid.NodeSize.Y), hitData => hitData.Fraction, out firstHit);
			if (firstHit.Count > 0 && firstHit.Any(x => (collisionCategory & x.Body.CollidesWith) == collisionCategory))
			{
				AddNodeExclude(nodesToExclude, -1, -1);
			}

			RigidBody.RayCast(nodeWorldPosition, nodeWorldPosition + new Vector2(nodeGrid.NodeSize.X, -nodeGrid.NodeSize.Y), hitData => hitData.Fraction, out firstHit);
			if (firstHit.Count > 0 && firstHit.Any(x => (collisionCategory & x.Body.CollidesWith) == collisionCategory))
			{
				AddNodeExclude(nodesToExclude, 1, -1);
			}
			return nodesToExclude;
		}

		private void AddNodeExclude(HashSet<Point2> nodesToExclude, int x, int y)
		{
			nodesToExclude.Add(new Point2(x, y));
		}
	}
}
