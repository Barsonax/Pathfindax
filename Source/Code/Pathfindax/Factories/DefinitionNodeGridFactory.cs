using Duality;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Factories
{
	public class DefinitionNodeGridFactory
	{
		private readonly NodeConnection[] _connectionBuffer = new NodeConnection[8];

		public Array2D<DefinitionNode> GeneratePreFilledArray(GenerateNodeGridConnections generateNodeGridConnections, NodeGridCollisionMask nodeGridCollisionLayers, bool crossCorners = false)
		{
			return GeneratePreFilledArray(generateNodeGridConnections, nodeGridCollisionLayers.Width, nodeGridCollisionLayers.Height, nodeGridCollisionLayers, crossCorners);
		}

		/// <summary>
		/// Returns a preconfigured <see cref="Array2D{DefinitionNode}"/> which can be used to make a <see cref="DefinitionNodeGrid"/>
		/// </summary>
		/// <param name="width"></param>
		/// <param name="height"></param>
		/// <param name="generateNodeGridConnections"></param>
		/// <param name="nodeGridCollisionLayers"></param>
		/// <returns></returns>
		public Array2D<DefinitionNode> GeneratePreFilledArray(GenerateNodeGridConnections generateNodeGridConnections, int width, int height, NodeGridCollisionMask nodeGridCollisionLayers = null, bool crossCorners = false)
		{
			var array = new Array2D<DefinitionNode>(width, height);
			for (var y = 0; y < height; y++)
			{
				for (var x = 0; x < width; x++)
				{
					var worldPosition = new Vector2(x, y);
					if (generateNodeGridConnections == GenerateNodeGridConnections.None)
					{
						array[x, y] = new DefinitionNode(worldPosition);
					}
					else
					{
						var connections = GetNeighbours(width, height, x, y, generateNodeGridConnections, nodeGridCollisionLayers, crossCorners);
						array[x, y] = new DefinitionNode(worldPosition, connections: connections);
					}
				}
			}
			return array;
		}

		private NodeConnection[] GetNeighbours(int width, int height, int fromX, int fromY, GenerateNodeGridConnections generateNodeGridConnections, NodeGridCollisionMask nodeGridCollisionLayers, bool crossCorners)
		{
			var count = 0;
			for (var y = -1; y <= 1; y++)
			{
				for (var x = -1; x <= 1; x++)
				{
					if (x == 0 && y == 0) continue; //Skip the center since this is the node we are adding neighbours to.

					var toX = fromX + x;
					var toY = fromY + y;

					if (toX >= 0 && toX < width && toY >= 0 && toY < height)
					{
						if (generateNodeGridConnections == GenerateNodeGridConnections.NoDiagonal)
						{
							if (x == 1 && y == 1 || x == -1 && y == 1 || x == -1 && y == -1 || x == 1 && y == -1)
							{
								continue;
							}
						}

						var cat = nodeGridCollisionLayers != null ? GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, toX, toY, crossCorners) : PathfindaxCollisionCategory.None;
						_connectionBuffer[count] = new NodeConnection(width * toY + toX, cat);
						count++;
					}
				}
			}
			var neighbours = new NodeConnection[count];
			for (var i = 0; i < neighbours.Length; i++)
			{
				neighbours[i] = _connectionBuffer[i];
			}
			return neighbours;
		}

		private PathfindaxCollisionCategory GetCollisionCategory(NodeGridCollisionMask nodeGridCollisionLayers, int fromX, int fromY, int toX, int toY, bool crossCorners)
		{
			const CollisionDirection right = CollisionDirection.Right | CollisionDirection.DiagonalDown | CollisionDirection.DiagonalUp;
			const CollisionDirection left = CollisionDirection.Left | CollisionDirection.DiagonalDown | CollisionDirection.DiagonalUp;
			const CollisionDirection bottom = CollisionDirection.Bottom | CollisionDirection.DiagonalDown | CollisionDirection.DiagonalUp;
			const CollisionDirection top = CollisionDirection.Top | CollisionDirection.DiagonalDown | CollisionDirection.DiagonalUp;

			const CollisionDirection rightTop = right | top;
			const CollisionDirection rightBottom = right | bottom;
			const CollisionDirection leftTop = left | top;
			const CollisionDirection leftBottom = left | bottom;

			const CollisionDirection leftTopDiagonal = CollisionDirection.Left | CollisionDirection.Top | CollisionDirection.DiagonalDown;
			const CollisionDirection rightBottomDiagonal = CollisionDirection.Right | CollisionDirection.Bottom | CollisionDirection.DiagonalDown;
			const CollisionDirection rightTopDiagonal = CollisionDirection.Right | CollisionDirection.Top | CollisionDirection.DiagonalUp;
			const CollisionDirection leftBottomDiagonal = CollisionDirection.Left | CollisionDirection.Bottom | CollisionDirection.DiagonalUp;

			var delta = new Point2(toX - fromX, toY - fromY);
			var cat = PathfindaxCollisionCategory.None;
			switch (delta)
			{
				case Point2 d when d.X == -1 && d.Y == 1: //LeftDown
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, leftBottom, toX, toY, rightTop, ref cat);
					if (!crossCorners)
					{
						GetCollisionCategory(nodeGridCollisionLayers, toX, fromY, rightBottomDiagonal, fromX, toY, leftTopDiagonal, ref cat);
					}
					break;
				case Point2 d when d.X == 1 && d.Y == 1: //RightDown
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, rightBottom, toX, toY, leftTop, ref cat);
					if (!crossCorners)
					{
						GetCollisionCategory(nodeGridCollisionLayers, toX, fromY, leftBottomDiagonal, fromX, toY, rightTopDiagonal, ref cat);
					}
					break;
				case Point2 d when d.X == -1 && d.Y == -1: //LeftUp
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, leftTop, toX, toY, rightBottom, ref cat);
					if (!crossCorners)
					{
						GetCollisionCategory(nodeGridCollisionLayers, toX, fromY, rightTopDiagonal, fromX, toY, leftBottomDiagonal, ref cat);
					}
					break;
				case Point2 d when d.X == 1 && d.Y == -1: //RightUp
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, rightTop, toX, toY, leftBottom, ref cat);
					if (!crossCorners)
					{
						GetCollisionCategory(nodeGridCollisionLayers, toX, fromY, leftTopDiagonal, fromX, toY, rightBottomDiagonal, ref cat);
					}
					break;

				case Point2 d when d.X == 1: //Right
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, right, toX, toY, left, ref cat);
					break;
				case Point2 d when d.X == -1: //Left
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, left, toX, toY, right, ref cat);
					break;
				case Point2 d when d.Y == 1: //Down
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, bottom, toX, toY, top, ref cat);
					break;
				case Point2 d when d.Y == -1: //Up
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, top, toX, toY, bottom, ref cat);
					break;
			}

			return cat;
		}

		private void GetCollisionCategory(NodeGridCollisionMask nodeGridCollisionLayers, int x, int y, CollisionDirection tileCollisionShapeSelf, int toX, int toY, CollisionDirection tileCollisionShapeOther, ref PathfindaxCollisionCategory collisionCategory)
		{
			foreach (var nodeGridCollisionLayer in nodeGridCollisionLayers.Layers)
			{
				if ((collisionCategory | nodeGridCollisionLayer.CollisionCategory) == collisionCategory) continue;
				if (DoesCollide(nodeGridCollisionLayer, x, y, tileCollisionShapeSelf) || DoesCollide(nodeGridCollisionLayer, toX, toY, tileCollisionShapeOther))
				{
					collisionCategory |= nodeGridCollisionLayer.CollisionCategory;
				}
			}
		}

		private bool DoesCollide(NodeGridCollisionLayer nodeGridCollisionLayer, int x, int y, CollisionDirection collisionDirection)
		{
			return (nodeGridCollisionLayer.CollisionDirections[x, y] & collisionDirection) != 0;
		}
	}
}
