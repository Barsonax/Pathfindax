using System;
using System.Collections.Generic;
using Duality.Components.Physics;
using Duality.Plugins.Tilemaps;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Duality.Plugins.Pathfindax.Tilemaps.Generators
{
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

		public void CalculateGridNodeCollision(TilemapColliderWithBody[] tilemapColliderWithBodies, IGridNode gridNode, INodeGrid<IGridNode> nodeGrid)
		{
			CalculateNodeCollisionCategories(gridNode.GridX, gridNode.GridY, tilemapColliderWithBodies);
			var selfCollisionCategory = _nodeCollisions[0];
			if (selfCollisionCategory.PathfindaxCollisionCategory != PathfindaxCollisionCategory.None)
				gridNode.Clearances = new[] { new GridClearance(selfCollisionCategory.PathfindaxCollisionCategory, 0) }; //This node is blocked so it has a clearance of 0.

			if (gridNode.GridX == 0 || gridNode.GridY == 0 || gridNode.GridX == nodeGrid.NodeArray.Width - 1 || gridNode.GridY == nodeGrid.NodeArray.Height - 1)
			{
				var connections = new List<NodeConnection<IGridNode>>(5);
				for (int index = 1; index < _nodeCollisions.Length; index++)
				{
					var collisionCategory = _nodeCollisions[index];
					if (collisionCategory.X >= 0 && collisionCategory.Y >= 0 && collisionCategory.X < nodeGrid.NodeArray.Width && collisionCategory.Y < nodeGrid.NodeArray.Height)
					{
						//TODO provide option to exclude diagonal neighbours.
						connections.Add(new NodeConnection<IGridNode>(nodeGrid.NodeArray[collisionCategory.X, collisionCategory.Y], collisionCategory.PathfindaxCollisionCategory));
					}
				}
				gridNode.Connections = connections.ToArray();
			}
			else
			{
				gridNode.Connections = new NodeConnection<IGridNode>[8];
				for (int index = 1; index < _nodeCollisions.Length; index++)
				{
					var collisionCategory = _nodeCollisions[index];
					//TODO provide option to exclude diagonal neighbours.
					gridNode.Connections[index - 1] = new NodeConnection<IGridNode>(nodeGrid.NodeArray[collisionCategory.X, collisionCategory.Y], collisionCategory.PathfindaxCollisionCategory);
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

		private bool IsSolid(TileCollisionShape tileCollisionShape)
		{
			return tileCollisionShape == TileCollisionShape.Solid || tileCollisionShape == TileCollisionShape.DiagonalDown || tileCollisionShape == TileCollisionShape.DiagonalUp;
		}

		private void MergeNodeCollision(NodeCollision[] nodeCollisions, PathfindaxCollisionCategory pathfindaxCollisionCategory, int index)
		{
			nodeCollisions[index].PathfindaxCollisionCategory = nodeCollisions[index].PathfindaxCollisionCategory | pathfindaxCollisionCategory;
		}

		private TileCollisionShape FlattenTileCollisionShapes(TilemapColliderWithBody collisionSources, int x, int y)
		{
			if (x >= 0 && y >= 0 && x < collisionSources.Width && y < collisionSources.Height)
			{
				var tileCollisionShape = TileCollisionShape.Free;
				foreach (var tilemapCollisionSource in collisionSources.TilemapCollider.CollisionSource)
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
			for (int i = 0; i < 16; i++)
			{
				if (i == 16)
				{
					_usedLayersCache[i] = new List<int> { 0, 1, 2, 3 }.ToArray();
				}
				var result = new List<int>();
				for (int index = 1; index < TileCollisionLayers.Length; index++)
				{
					var definitionTileCollisionLayer = TileCollisionLayers[index];
					if (((TileCollisionLayer)i & definitionTileCollisionLayer) != 0) result.Add(index - 1);
				}
				_usedLayersCache[i] = result.ToArray();
			}
		}
	}

	public class NodeCollision
	{
		public PathfindaxCollisionCategory PathfindaxCollisionCategory;
		public int X;
		public int Y;

		public NodeCollision(PathfindaxCollisionCategory pathfindaxCollisionCategory, int x, int y)
		{
			PathfindaxCollisionCategory = pathfindaxCollisionCategory;
			X = x;
			Y = y;
		}
	}

	public class TilemapColliderWithBody
	{
		public int Width;
		public int Height;
		public TilemapCollider TilemapCollider;
		public RigidBody RigidBody;

		public TilemapColliderWithBody(TilemapCollider tilemapCollider)
		{
			TilemapCollider = tilemapCollider;
			RigidBody = tilemapCollider.GameObj.GetComponent<RigidBody>();
			Width = tilemapCollider.CollisionSource[0].SourceTilemap.Tiles.Width;
			Height = tilemapCollider.CollisionSource[0].SourceTilemap.Tiles.Height;
		}
	}
}