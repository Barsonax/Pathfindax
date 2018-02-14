using System;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Graph;
using Pathfindax.Nodes;

namespace Pathfindax.Factories
{
	public class DefinitionNodeGridFactory
	{
		/// <summary>
		/// Returns a preconfigured <see cref="Array2D{DefinitionNode}"/> which can be used to make a <see cref="DefinitionNodeGrid"/>
		/// </summary>
		/// <param name="width"></param>
		/// <param name="height"></param>
		/// <param name="generateNodeGridConnections"></param>
		/// <param name="isBlocked"></param>
		/// <returns></returns>
		public Array2D<DefinitionNode> GeneratePreFilledArray(GenerateNodeGridConnections generateNodeGridConnections, int width, int height, IsBlockedFunction isBlocked = null, bool crossCorners = false)
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
						var connections = GetNeighbours(width, height, x, y, generateNodeGridConnections, isBlocked, crossCorners);
						array[x, y] = new DefinitionNode(worldPosition, connections: connections);
					}
				}
			}
			return array;
		}

		private readonly NodeConnection[] _connectionBuffer = new NodeConnection[8];
		private NodeConnection[] GetNeighbours(int width, int height, int fromX, int fromY, GenerateNodeGridConnections generateNodeGridConnections, IsBlockedFunction isBlocked, bool crossCorners)
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

						var cat = isBlocked != null ? GetCollisionCategory(isBlocked, fromX, fromY, toX, toY, crossCorners) : PathfindaxCollisionCategory.None;
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
		public delegate void IsBlockedFunction(int fromX, int fromY, CollisionDirection fromDir, int toX, int toY, CollisionDirection toDir, ref PathfindaxCollisionCategory collisionCategory);
		private PathfindaxCollisionCategory GetCollisionCategory(IsBlockedFunction isBlocked, int fromX, int fromY, int toX, int toY, bool crossCorners)
		{
			var delta = new Point2(toX - fromX, toY - fromY);
			var cat = PathfindaxCollisionCategory.None;
			switch (delta)
			{
				case Point2 d when d.X == -1 && d.Y == 1: //LeftDown
					isBlocked.Invoke(fromX, fromY, CollisionDirection.Left | CollisionDirection.Bottom, toX, toY, CollisionDirection.Right | CollisionDirection.Top, ref cat);
					if (!crossCorners)
					{
						isBlocked.Invoke(toX, fromY, CollisionDirection.Right | CollisionDirection.Bottom, fromX, toY, CollisionDirection.Left | CollisionDirection.Top, ref cat);
					}
					break;
				case Point2 d when d.X == 1 && d.Y == 1: //RightDown
					isBlocked.Invoke(fromX, fromY, CollisionDirection.Right | CollisionDirection.Bottom, toX, toY, CollisionDirection.Left | CollisionDirection.Top, ref cat);
					if (!crossCorners)
					{
						isBlocked.Invoke(toX, fromY, CollisionDirection.Left | CollisionDirection.Bottom, fromX, toY, CollisionDirection.Right | CollisionDirection.Top, ref cat);
					}
					break;
				case Point2 d when d.X == -1 && d.Y == -1: //LeftUp
					isBlocked.Invoke(fromX, fromY, CollisionDirection.Left | CollisionDirection.Top, toX, toY, CollisionDirection.Right | CollisionDirection.Bottom, ref cat);
					if (!crossCorners)
					{
						isBlocked.Invoke(toX, fromY, CollisionDirection.Right | CollisionDirection.Top, fromX, toY, CollisionDirection.Left | CollisionDirection.Bottom, ref cat);
					}
					break;
				case Point2 d when d.X == 1 && d.Y == -1: //RightUp
					isBlocked.Invoke(fromX, fromY, CollisionDirection.Right | CollisionDirection.Top, toX, toY, CollisionDirection.Left | CollisionDirection.Bottom, ref cat);
					if (!crossCorners)
					{
						isBlocked.Invoke(toX, fromY, CollisionDirection.Left | CollisionDirection.Top, fromX, toY, CollisionDirection.Right | CollisionDirection.Bottom, ref cat);
					}
					break;

				case Point2 d when d.X == 1: //Right
					isBlocked.Invoke(fromX, fromY, CollisionDirection.Right, toX, toY, CollisionDirection.Left, ref cat);
					break;
				case Point2 d when d.X == -1: //Left
					isBlocked.Invoke(fromX, fromY, CollisionDirection.Left, toX, toY, CollisionDirection.Right, ref cat);
					break;
				case Point2 d when d.Y == 1: //Down
					isBlocked.Invoke(fromX, fromY, CollisionDirection.Bottom, toX, toY, CollisionDirection.Top, ref cat);
					break;
				case Point2 d when d.Y == -1: //Up
					isBlocked.Invoke(fromX, fromY, CollisionDirection.Top, toX, toY, CollisionDirection.Bottom, ref cat);
					break;
			}

			return cat;
		}
	}

	[Flags]
	public enum CollisionDirection : byte
	{
		//
		// Summary:
		//     The tile is completely empty. No collision at all.
		Free = 0,
		//
		// Summary:
		//     The tiles top edge is considered solid.
		Top = 1,
		//
		// Summary:
		//     The tiles bottom edge is considered solid.
		Bottom = 2,
		//
		// Summary:
		//     The tiles left edge is considered solid.
		Left = 4,
		//
		// Summary:
		//     The tiles right edge is considered solid.
		Right = 8,
		//
		// Summary:
		//     A solid diagonal edge from the tiles bottom left to its top right corner is assumed.
		DiagonalUp = 16,
		//
		// Summary:
		//     A solid diagonal edge from the tiles top left to its bottom right corner is assumed.
		DiagonalDown = 32,
		//
		// Summary:
		//     All collision bits are set. This is generally true for tiles that are completely
		//     impassable / solid.
		Solid = 63
	}
}
