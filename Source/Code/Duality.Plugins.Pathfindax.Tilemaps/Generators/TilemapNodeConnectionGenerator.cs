using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Components.Physics;
using Duality.Plugins.Tilemaps;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Duality.Plugins.Pathfindax.Tilemaps.Generators
{
	/// <summary>
	/// Generates connections and base clearances for nodes based upon information from <see cref="TilemapCollisionSource"/>s
	/// </summary>
	public class TilemapNodeConnectionGenerator
	{
		private readonly int[][] _usedLayersCache = new int[16][];
		private TileCollisionLayer[] _tileCollisionLayers;
		private TileCollisionLayer[] TileCollisionLayers
		{
			get
			{
				if (_tileCollisionLayers == null)
				{
					var list = new List<TileCollisionLayer>();
					foreach (TileCollisionLayer value in Enum.GetValues(typeof(TileCollisionLayer)))
					{
						if (value != TileCollisionLayer.All)
						{
							list.Add(value);
						}
					}
					_tileCollisionLayers = list.ToArray();
				}
				return _tileCollisionLayers;
			}
		}

		private readonly NodeCollision[] _nodeCollisions;

		/// <summary>
		/// Creates a new <see cref="TilemapNodeConnectionGenerator"/> instance and does some initialization work
		/// </summary>
		public TilemapNodeConnectionGenerator()
		{
			_nodeCollisions = new[]
			{
				new NodeCollision(PathfindaxCollisionCategory.None, 0,0),

				new NodeCollision(PathfindaxCollisionCategory.None, 0,0),
				new NodeCollision(PathfindaxCollisionCategory.None, 0,0),
				new NodeCollision(PathfindaxCollisionCategory.None, 0,0),
				new NodeCollision(PathfindaxCollisionCategory.None, 0,0),

				new NodeCollision(PathfindaxCollisionCategory.None, 0,0),
				new NodeCollision(PathfindaxCollisionCategory.None, 0,0),
				new NodeCollision(PathfindaxCollisionCategory.None, 0,0),
				new NodeCollision(PathfindaxCollisionCategory.None, 0,0),
			};
			FillUsedLayerCache();
		}

		/// <summary>
		/// Calculates the <see cref="NodeConnection{TNode}"/>s and the base <see cref="GridClearance"/> for the <paramref name="sourceGridNode"/>
		/// </summary>
		/// <param name="tilemapColliderWithBodies"></param>
		/// <param name="sourceGridNode"></param>
		/// <param name="sourceNodeGrid"></param>
		public void CalculateGridNodeCollision(TilemapColliderWithBody[] tilemapColliderWithBodies, ISourceGridNode sourceGridNode, ISourceNodeGrid<ISourceGridNode> sourceNodeGrid)
		{
			CalculateNodeCollisionCategories(sourceGridNode.GridX, sourceGridNode.GridY, tilemapColliderWithBodies);
			var selfCollisionCategory = _nodeCollisions[0];
			if (selfCollisionCategory.PathfindaxCollisionCategory != PathfindaxCollisionCategory.None)
				sourceGridNode.Clearances = new[] { new GridClearance(selfCollisionCategory.PathfindaxCollisionCategory, 0) }; //This node is blocked so it has a clearance of 0.

			if (sourceGridNode.GridX == 0 || sourceGridNode.GridY == 0 || sourceGridNode.GridX == sourceNodeGrid.NodeArray.Width - 1 || sourceGridNode.GridY == sourceNodeGrid.NodeArray.Height - 1)
			{
				var connections = new List<NodeConnection<ISourceGridNode>>(5);
				for (var index = 1; index < _nodeCollisions.Length; index++)
				{
					var collisionCategory = _nodeCollisions[index];
					if (collisionCategory.X >= 0 && collisionCategory.Y >= 0 && collisionCategory.X < sourceNodeGrid.NodeArray.Width && collisionCategory.Y < sourceNodeGrid.NodeArray.Height)
					{
						//TODO provide option to exclude diagonal neighbours.
						connections.Add(new NodeConnection<ISourceGridNode>(sourceNodeGrid.NodeArray[collisionCategory.X, collisionCategory.Y], collisionCategory.PathfindaxCollisionCategory));
					}
				}
				sourceGridNode.Connections = connections.ToArray();
			}
			else
			{
				sourceGridNode.Connections = new NodeConnection<ISourceGridNode>[8];
				for (var index = 1; index < _nodeCollisions.Length; index++)
				{
					var collisionCategory = _nodeCollisions[index];
					//TODO provide option to exclude diagonal neighbours.
					sourceGridNode.Connections[index - 1] = new NodeConnection<ISourceGridNode>(sourceNodeGrid.NodeArray[collisionCategory.X, collisionCategory.Y], collisionCategory.PathfindaxCollisionCategory);
				}
			}
		}

		private void CalculateNodeCollisionCategories(int x, int y, TilemapColliderWithBody[] tilemapColliderWithBodies)
		{
			ResetnodeCollision(0, x, y);

			ResetnodeCollision(1, x - 1, y);
			ResetnodeCollision(2, x, y - 1);
			ResetnodeCollision(3, x + 1, y);
			ResetnodeCollision(4, x, y + 1);

			ResetnodeCollision(5, x - 1, y - 1);
			ResetnodeCollision(6, x + 1, y - 1);
			ResetnodeCollision(7, x + 1, y + 1);
			ResetnodeCollision(8, x - 1, y + 1);

			foreach (var tilemapCollider in tilemapColliderWithBodies)
			{
				var collisionCategory = (PathfindaxCollisionCategory)tilemapCollider.RigidBody.CollisionCategory;

				//Self 0
				var tileCollisionShapesSelf = FlattenTileCollisionShapes(tilemapCollider, x, y);

				if (IsSolid(tileCollisionShapesSelf))
				{
					MergeNodeCollision(_nodeCollisions, collisionCategory, 0);
					continue;
				}

				//Left 1
				var tileX = x - 1;
				var tileY = y;
				var tileCollisionShapesLeft = FlattenTileCollisionShapes(tilemapCollider, tileX, tileY);

				if (IsSolid(tileCollisionShapesLeft) || (tileCollisionShapesLeft & TileCollisionShape.Right) != 0 || (tileCollisionShapesSelf & TileCollisionShape.Left) != 0) MergeNodeCollision(_nodeCollisions, collisionCategory, 1);

				//Up 2
				tileX = x;
				tileY = y - 1;
				var tileCollisionShapesUp = FlattenTileCollisionShapes(tilemapCollider, tileX, tileY);

				if (IsSolid(tileCollisionShapesUp) || (tileCollisionShapesUp & TileCollisionShape.Bottom) != 0 || (tileCollisionShapesSelf & TileCollisionShape.Top) != 0) MergeNodeCollision(_nodeCollisions, collisionCategory, 2);

				//Right 3
				tileX = x + 1;
				tileY = y;
				var tileCollisionShapesRight = FlattenTileCollisionShapes(tilemapCollider, tileX, tileY);

				if (IsSolid(tileCollisionShapesRight) || (tileCollisionShapesRight & TileCollisionShape.Left) != 0 || (tileCollisionShapesSelf & TileCollisionShape.Right) != 0) MergeNodeCollision(_nodeCollisions, collisionCategory, 3);

				//Down 4
				tileX = x;
				tileY = y + 1;
				var tileCollisionShapesDown = FlattenTileCollisionShapes(tilemapCollider, tileX, tileY);

				if (IsSolid(tileCollisionShapesDown) || (tileCollisionShapesDown & TileCollisionShape.Top) != 0 || (tileCollisionShapesSelf & TileCollisionShape.Bottom) != 0) MergeNodeCollision(_nodeCollisions, collisionCategory, 4);

				//LeftUp 5
				tileX = x - 1;
				tileY = y - 1;
				var tileCollisionShapes = FlattenTileCollisionShapes(tilemapCollider, tileX, tileY);

				if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Right) != 0 || (tileCollisionShapes & TileCollisionShape.Bottom) != 0 ||
					_nodeCollisions[1].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None || _nodeCollisions[2].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None ||
					(tileCollisionShapesLeft & TileCollisionShape.Top) != 0 || (tileCollisionShapesUp & TileCollisionShape.Left) != 0
					) MergeNodeCollision(_nodeCollisions, collisionCategory, 5);

				//RightUp 6
				tileX = x + 1;
				tileY = y - 1;
				tileCollisionShapes = FlattenTileCollisionShapes(tilemapCollider, tileX, tileY);

				if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Left) != 0 || (tileCollisionShapes & TileCollisionShape.Bottom) != 0 ||
					_nodeCollisions[3].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None || _nodeCollisions[2].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None ||
					(tileCollisionShapesRight & TileCollisionShape.Top) != 0 || (tileCollisionShapesUp & TileCollisionShape.Right) != 0
					) MergeNodeCollision(_nodeCollisions, collisionCategory, 6);

				//RightDown 7
				tileX = x + 1;
				tileY = y + 1;
				tileCollisionShapes = FlattenTileCollisionShapes(tilemapCollider, tileX, tileY);

				if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Right) != 0 || (tileCollisionShapes & TileCollisionShape.Top) != 0 ||
					_nodeCollisions[3].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None || _nodeCollisions[4].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None ||
					(tileCollisionShapesRight & TileCollisionShape.Bottom) != 0 || (tileCollisionShapesDown & TileCollisionShape.Right) != 0
					) MergeNodeCollision(_nodeCollisions, collisionCategory, 7);

				//LeftDown 8
				tileX = x - 1;
				tileY = y + 1;
				tileCollisionShapes = FlattenTileCollisionShapes(tilemapCollider, tileX, tileY);

				if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Left) != 0 || (tileCollisionShapes & TileCollisionShape.Top) != 0 ||
					_nodeCollisions[1].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None || _nodeCollisions[4].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None ||
					(tileCollisionShapesLeft & TileCollisionShape.Bottom) != 0 || (tileCollisionShapesDown & TileCollisionShape.Left) != 0)
					MergeNodeCollision(_nodeCollisions, collisionCategory, 8);

			}
		}

		private void ResetnodeCollision(int index, int x, int y)
		{
			_nodeCollisions[index].X = x;
			_nodeCollisions[index].Y = y;
			_nodeCollisions[index].PathfindaxCollisionCategory = PathfindaxCollisionCategory.None;
		}

		private static bool IsSolid(TileCollisionShape tileCollisionShape)
		{
			return tileCollisionShape == TileCollisionShape.Solid || tileCollisionShape == TileCollisionShape.DiagonalDown || tileCollisionShape == TileCollisionShape.DiagonalUp;
		}

		private static void MergeNodeCollision(NodeCollision[] nodeCollisions, PathfindaxCollisionCategory pathfindaxCollisionCategory, int index)
		{
			nodeCollisions[index].PathfindaxCollisionCategory = nodeCollisions[index].PathfindaxCollisionCategory | pathfindaxCollisionCategory;
		}

		private TileCollisionShape FlattenTileCollisionShapes(TilemapColliderWithBody collisionSources, int x, int y)
		{
			if (x >= 0 && y >= 0 && x < collisionSources.Width && y < collisionSources.Height)
			{
				var tileCollisionShape = TileCollisionShape.Free;
				foreach (var tilemapCollisionSource in collisionSources.TilemapCollisionSources)
				{
					var tileInfos = tilemapCollisionSource.SourceTilemap.Tileset.Res.TileData;
					var tileGrid = tilemapCollisionSource.SourceTilemap.Tiles;
					var tile = tileGrid[x, y];
					var tileInfo = tileInfos[tile.Index];
					var usedLayers = _usedLayersCache[(int)tilemapCollisionSource.Layers];
					foreach (var usedLayer in usedLayers)
					{
						tileCollisionShape = tileCollisionShape | tileInfo.Collision[usedLayer];
					}
				}
				return tileCollisionShape;
			}
			return TileCollisionShape.Solid;
		}


		private void FillUsedLayerCache()
		{
			for (var i = 0; i < 16; i++)
			{
				if (i == 16)
				{
					_usedLayersCache[i] = new List<int> { 0, 1, 2, 3 }.ToArray();
				}
				var result = new List<int>();
				for (var index = 1; index < TileCollisionLayers.Length; index++)
				{
					var definitionTileCollisionLayer = TileCollisionLayers[index];
					if (((TileCollisionLayer)i & definitionTileCollisionLayer) != 0) result.Add(index - 1);
				}
				_usedLayersCache[i] = result.ToArray();
			}
		}
	}

	/// <summary>
	/// Only purpose of this class is to store the collisions that are later used to generate the <see cref="NodeConnection{TNode}"/>s
	/// </summary>
	public class NodeCollision
	{
		/// <summary>
		/// The collision bitmask
		/// </summary>
		public PathfindaxCollisionCategory PathfindaxCollisionCategory;

		/// <summary>
		/// The X grid coordinate of where this connection will be going to
		/// </summary>
		public int X;

		/// <summary>
		/// The Y grid coordinate of where this connection will be going to
		/// </summary>
		public int Y;

		/// <summary>
		/// Creates a new <see cref="NodeCollision"/> instance
		/// </summary>
		/// <param name="pathfindaxCollisionCategory"></param>
		/// <param name="x"></param>
		/// <param name="y"></param>
		public NodeCollision(PathfindaxCollisionCategory pathfindaxCollisionCategory, int x, int y)
		{
			PathfindaxCollisionCategory = pathfindaxCollisionCategory;
			X = x;
			Y = y;
		}
	}

	/// <summary>
	/// Groups the <see cref="TilemapCollider"/> and the <see cref="RigidBody"/> it uses together for easy access.
	/// </summary>
	public class TilemapColliderWithBody
	{
		/// <summary>
		/// The width of the first <see cref="Tilemap"/> in the first <see cref="TilemapCollisionSource"/> of the <see cref="TilemapCollider"/>
		/// </summary>
		public readonly int Width;

		/// <summary>
		/// The height of the first <see cref="Tilemap"/> in the first <see cref="TilemapCollisionSource"/> of the <see cref="TilemapCollider"/>
		/// </summary>
		public readonly int Height;

		/// <summary>
		/// The <see cref="TilemapCollider"/>
		/// </summary>
		public readonly TilemapCollider TilemapCollider;

		/// <summary>
		/// The <see cref="RigidBody"/> that is on the same <see cref="GameObject"/> as the <see cref="TilemapCollider"/>
		/// </summary>
		public readonly RigidBody RigidBody;

		/// <summary>
		/// Storing the collision sources of the <see cref="TilemapCollider"/> in a array allows for much quicker access than leaving them in the <see cref="IReadOnlyList{T}"/>
		/// </summary>
		public readonly TilemapCollisionSource[] TilemapCollisionSources;

		/// <summary>
		/// Creates a new instance of the <see cref="TilemapCollider"/> and adds the <see cref="RigidBody"/> thats on the same <see cref="GameObject"/>
		/// </summary>
		/// <param name="tilemapCollider"></param>
		public TilemapColliderWithBody(TilemapCollider tilemapCollider)
		{
			TilemapCollider = tilemapCollider;
			RigidBody = tilemapCollider.GameObj.GetComponent<RigidBody>();
			Width = tilemapCollider.CollisionSource[0].SourceTilemap.Tiles.Width;
			Height = tilemapCollider.CollisionSource[0].SourceTilemap.Tiles.Height;
			TilemapCollisionSources = tilemapCollider.CollisionSource.ToArray();
		}
	}
}