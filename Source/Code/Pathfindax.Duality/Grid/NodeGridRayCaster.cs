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
		/// <param name="gridNode"></param>
		/// <param name="collisionCategory"></param>
		/// <returns></returns>
		public IEnumerable<Point2> GetUnreachableNeighbours(INodeGrid<IGridNode> nodeGrid, IGridNode gridNode, CollisionCategory collisionCategory)
		{
			var nodeWorldPosition = new Vector2(gridNode.Position.X + nodeGrid.Offset.X, gridNode.Position.Y + nodeGrid.Offset.Y);
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

		public IEnumerable<IGridNode> GetReachableNeighbours(INodeGrid<IGridNode> nodeGrid, IGridNode gridNode, CollisionCategory collisionCategory)
		{
			var nodesToExclude = GetUnreachableNeighbours(nodeGrid, gridNode, collisionCategory);
			for (var x = -1; x <= 1; x++)
			{
				for (var y = -1; y <= 1; y++)
				{
					if (x == 0 && y == 0) continue; //Skip the center since this is the node we are adding neighbours to.

					var currentPosition = new Point2(gridNode.GridX + x, gridNode.GridY + y);
					if (currentPosition.X >= 0 && currentPosition.X < nodeGrid.NodeArray.Width && currentPosition.Y >= 0 && currentPosition.Y < nodeGrid.NodeArray.Height && !nodesToExclude.Contains(new Point2(x, y)))
					{
						yield return nodeGrid.NodeArray[currentPosition.X, currentPosition.Y];
					}
				}
			}
		}

		private void AddNodeExclude(HashSet<Point2> nodesToExclude, int x, int y)
		{
			nodesToExclude.Add(new Point2(x, y));
		}
	}
}
