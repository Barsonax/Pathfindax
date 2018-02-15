using System;
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
			var delta = new Point2(toX - fromX, toY - fromY);
			var cat = PathfindaxCollisionCategory.None;
			switch (delta)
			{
				case Point2 d when d.X == -1 && d.Y == 1: //LeftDown
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, CollisionDirection.Left | CollisionDirection.Bottom, toX, toY, CollisionDirection.Right | CollisionDirection.Top, ref cat);
					if (!crossCorners)
					{
						GetCollisionCategory(nodeGridCollisionLayers, toX, fromY, CollisionDirection.Right | CollisionDirection.Bottom, fromX, toY, CollisionDirection.Left | CollisionDirection.Top, ref cat);
					}
					break;
				case Point2 d when d.X == 1 && d.Y == 1: //RightDown
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, CollisionDirection.Right | CollisionDirection.Bottom, toX, toY, CollisionDirection.Left | CollisionDirection.Top, ref cat);
					if (!crossCorners)
					{
						GetCollisionCategory(nodeGridCollisionLayers, toX, fromY, CollisionDirection.Left | CollisionDirection.Bottom, fromX, toY, CollisionDirection.Right | CollisionDirection.Top, ref cat);
					}
					break;
				case Point2 d when d.X == -1 && d.Y == -1: //LeftUp
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, CollisionDirection.Left | CollisionDirection.Top, toX, toY, CollisionDirection.Right | CollisionDirection.Bottom, ref cat);
					if (!crossCorners)
					{
						GetCollisionCategory(nodeGridCollisionLayers, toX, fromY, CollisionDirection.Right | CollisionDirection.Top, fromX, toY, CollisionDirection.Left | CollisionDirection.Bottom, ref cat);
					}
					break;
				case Point2 d when d.X == 1 && d.Y == -1: //RightUp
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, CollisionDirection.Right | CollisionDirection.Top, toX, toY, CollisionDirection.Left | CollisionDirection.Bottom, ref cat);
					if (!crossCorners)
					{
						GetCollisionCategory(nodeGridCollisionLayers, toX, fromY, CollisionDirection.Left | CollisionDirection.Top, fromX, toY, CollisionDirection.Right | CollisionDirection.Bottom, ref cat);
					}
					break;

				case Point2 d when d.X == 1: //Right
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, CollisionDirection.Right, toX, toY, CollisionDirection.Left, ref cat);
					break;
				case Point2 d when d.X == -1: //Left
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, CollisionDirection.Left, toX, toY, CollisionDirection.Right, ref cat);
					break;
				case Point2 d when d.Y == 1: //Down
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, CollisionDirection.Bottom, toX, toY, CollisionDirection.Top, ref cat);
					break;
				case Point2 d when d.Y == -1: //Up
					GetCollisionCategory(nodeGridCollisionLayers, fromX, fromY, CollisionDirection.Top, toX, toY, CollisionDirection.Bottom, ref cat);
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

	public class NodeGridCollisionMask
	{
		public int Width { get; }
		public int Height { get; }
		public NodeGridCollisionLayer[] Layers { get; }

		public NodeGridCollisionMask(PathfindaxCollisionCategory collisionCategory, int width, int height)
		{
			Width = width;
			Height = height;
			Layers = new NodeGridCollisionLayer[1];
			Layers[0] = new NodeGridCollisionLayer(collisionCategory, width, height);
		}

		public NodeGridCollisionMask(PathfindaxCollisionCategory[] collisionCategories, int width, int height)
		{
			Width = width;
			Height = height;
			Layers = new NodeGridCollisionLayer[collisionCategories.Length];
			for (int i = 0; i < Layers.Length; i++)
			{
				Layers[i] = new NodeGridCollisionLayer(collisionCategories[i], width, height);
			}
		}
	}

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
