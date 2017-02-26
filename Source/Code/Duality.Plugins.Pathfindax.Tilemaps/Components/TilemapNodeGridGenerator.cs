using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Duality.Components.Physics;
using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Grid;
using Duality.Plugins.Tilemaps;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Primitives;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Tilemaps.Components
{
	/// <summary>
	/// Generates a <see cref="INodeGrid{TNode}"/> from <see cref="Tilemap"/>'s.
	/// The <see cref="Tilemap"/>'s must be children of the gameobject this component is attached to.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTilemap)]
	public class TilemapNodeGridGenerator : Component, ISourceNodeNetworkProvider<INodeGrid<IGridNode>>
	{
		[EditorHintFlags(MemberFlags.Invisible)]
		public float BoundRadius { get; }

		/// <summary>
		/// The maximum clearance that will be calculated. For performance reason try to keep this as small as possible and thus should be kept equal to the size of your largest agent in nodes.
		/// </summary>
		public int MaxCalculatedClearance { get; set; }

		/// <summary>
		/// The movement penalties per tile which can be used to make the pathfinder try to avoid certain nodes. The index of the value in the array is equal to the index of the tile.
		/// </summary>
		public byte[] MovementPenalties { get; set; }

		private NodeGridVisualizer _nodeGridVisualizer;
		private INodeGrid<IGridNode> _nodeGrid;
		private static TileCollisionLayer[] _tileCollisionLayers;

		private static TileCollisionLayer[] TileCollisionLayers
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

		public INodeGrid<IGridNode> GenerateGrid2D()
		{
			if (_nodeGrid == null)
			{
				var tilemaps = GameObj.GetComponentsInChildren<Tilemap>().ToArray();
				var baseTilemap = tilemaps.FirstOrDefault();
				var offset = -new Vector2((baseTilemap.Size.X * baseTilemap.Tileset.Res.TileSize.X) - baseTilemap.Tileset.Res.TileSize.X, (baseTilemap.Size.Y * baseTilemap.Tileset.Res.TileSize.Y) - baseTilemap.Tileset.Res.TileSize.Y) / 2;
				var sourceNodeGridFactory = new SourceNodeGridFactory();
				_nodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(baseTilemap.Size.X, baseTilemap.Size.Y, new PositionF(baseTilemap.Tileset.Res.TileSize.X, baseTilemap.Tileset.Res.TileSize.Y), GenerateNodeGridConnections.None, new PositionF(offset.X, offset.Y));
				var tilemapColliderWithBodies = GameObj.GetComponentsInChildren<TilemapCollider>().Select(x => new TilemapColliderWithBody(x)).ToArray();
				var watch = new Stopwatch();
				watch.Start();
				Parallel.ForEach(_nodeGrid, gridNode =>
				{
					CalculateGridNodeCollision(tilemapColliderWithBodies, gridNode, _nodeGrid);
				});

				Parallel.ForEach(_nodeGrid, gridNode =>
				{
					if (MovementPenalties != null && baseTilemap.Tiles[gridNode.GridX, gridNode.GridY].Index < MovementPenalties.Length)
						gridNode.MovementPenalty = MovementPenalties[baseTilemap.Tiles[gridNode.GridX, gridNode.GridY].Index];

					var clearances = sourceNodeGridFactory.CalculateGridNodeClearances(_nodeGrid, gridNode, MaxCalculatedClearance);
					if (clearances.Count > 0)
					{
						gridNode.Clearances = gridNode.Clearances == null ? clearances.ToArray() : gridNode.Clearances.Concat(clearances).ToArray();
					}
				});
				watch.Stop();
				Debug.WriteLine(watch.ElapsedMilliseconds);
				_nodeGridVisualizer = new NodeGridVisualizer(_nodeGrid);
			}
			return _nodeGrid;
		}

		private void CalculateGridNodeCollision(TilemapColliderWithBody[] tilemapColliderWithBodies, IGridNode gridNode, INodeGrid<IGridNode> nodeGrid)
		{
			var connections = new List<NodeConnection<IGridNode>>();
			var collisionCategories = CalculateNodeCollisionCategories(gridNode.GridX, gridNode.GridY, tilemapColliderWithBodies);
			foreach (var collisionCategory in collisionCategories)
			{
				if (collisionCategory.X == gridNode.GridX && collisionCategory.Y == gridNode.GridY)
				{
					if (collisionCategory.PathfindaxCollisionCategory != PathfindaxCollisionCategory.None)
						gridNode.Clearances = new[] { new GridClearance(collisionCategory.PathfindaxCollisionCategory, 0) }; //This node is blocked so it has a clearance of 0.
				}
				else if (collisionCategory.X >= 0 && collisionCategory.Y >= 0 && collisionCategory.X < nodeGrid.NodeArray.Width && collisionCategory.Y < nodeGrid.NodeArray.Height)
				{
					//TODO provide option to exclude diagonal neighbours.
					connections.Add(new NodeConnection<IGridNode>(nodeGrid.NodeArray[collisionCategory.X, collisionCategory.Y], collisionCategory.PathfindaxCollisionCategory));
				}
			}
			gridNode.Connections = connections.ToArray();
		}

		private TileCollisionShape FlattenTileCollisionShapes(IReadOnlyGrid<Tile> tileGrid, int x, int y, RawList<TileInfo> tileInfos, TileCollisionLayer tileCollisionLayer)
		{
			if (x >= 0 && y >= 0 && x < tileGrid.Width && y < tileGrid.Height)
			{
				var tile = tileGrid[x, y];
				var tileInfo = tileInfos[tile.Index];
				var usedLayers = GetUsedLayers(tileCollisionLayer);
				var tileCollisionShape = TileCollisionShape.Free;
				foreach (var usedLayer in usedLayers)
				{
					tileCollisionShape = tileCollisionShape | tileInfo.Collision[usedLayer];
				}
				return tileCollisionShape;
			}
			return TileCollisionShape.Solid; //Tile coordinates outside the map are seens as solid.
		}

		private List<int> GetUsedLayers(TileCollisionLayer tileCollisionLayer)
		{		
			if (tileCollisionLayer == TileCollisionLayer.All)
			{
				return new List<int> { 0, 1, 2, 3 };
			}
			var result = new List<int>();
			for (int index = 1; index < TileCollisionLayers.Length; index++)
			{
				var definitionTileCollisionLayer = TileCollisionLayers[index];
				if ((tileCollisionLayer & definitionTileCollisionLayer) != 0) result.Add(index - 1);
			}
			return result;
		}

		private void MergeNodeCollision(NodeCollision[] nodeCollisions, PathfindaxCollisionCategory pathfindaxCollisionCategory, int index)
		{
			nodeCollisions[index].PathfindaxCollisionCategory = nodeCollisions[index].PathfindaxCollisionCategory | pathfindaxCollisionCategory;
		}

		private NodeCollision[] CalculateNodeCollisionCategories(int x, int y, TilemapColliderWithBody[] tilemapColliderWithBodies)
		{

			var collisionCategories = new[]
			{
				new NodeCollision(PathfindaxCollisionCategory.None, x, y),

				new NodeCollision(PathfindaxCollisionCategory.None, x -1, y),
				new NodeCollision(PathfindaxCollisionCategory.None, x, y -1),
				new NodeCollision(PathfindaxCollisionCategory.None, x + 1, y),
				new NodeCollision(PathfindaxCollisionCategory.None, x, y +1),

				new NodeCollision(PathfindaxCollisionCategory.None, x - 1, y - 1),
				new NodeCollision(PathfindaxCollisionCategory.None, x + 1, y - 1),
				new NodeCollision(PathfindaxCollisionCategory.None, x + 1, y + 1),
				new NodeCollision(PathfindaxCollisionCategory.None, x - 1, y + 1),
			};

			foreach (var tilemapCollider in tilemapColliderWithBodies)
			{
				var collisionCategory = (PathfindaxCollisionCategory)tilemapCollider.RigidBody.CollisionCategory;
				foreach (var tilemapCollisionSource in tilemapCollider.TilemapCollider.CollisionSource)
				{
					var tileInfos = tilemapCollisionSource.SourceTilemap.Tileset.Res.TileData;
					var tiles = tilemapCollisionSource.SourceTilemap.Tiles;

					//Self 0
					var tileCollisionShapes = FlattenTileCollisionShapes(tiles, x, y, tileInfos, tilemapCollisionSource.Layers);

					if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Right) != 0) MergeNodeCollision(collisionCategories, collisionCategory, 0);

					//Left 1
					var tileX = x - 1;
					var tileY = y;
					tileCollisionShapes = FlattenTileCollisionShapes(tiles, tileX, tileY, tileInfos, tilemapCollisionSource.Layers);

					if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Right) != 0) MergeNodeCollision(collisionCategories, collisionCategory, 1);

					//Up 2
					tileX = x;
					tileY = y - 1;
					tileCollisionShapes = FlattenTileCollisionShapes(tiles, tileX, tileY, tileInfos, tilemapCollisionSource.Layers);

					if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Bottom) != 0) MergeNodeCollision(collisionCategories, collisionCategory, 2);

					//Right 3
					tileX = x + 1;
					tileY = y;
					tileCollisionShapes = FlattenTileCollisionShapes(tiles, tileX, tileY, tileInfos, tilemapCollisionSource.Layers);

					if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Bottom) != 0) MergeNodeCollision(collisionCategories, collisionCategory, 3);

					//Down 4
					tileX = x;
					tileY = y + 1;
					tileCollisionShapes = FlattenTileCollisionShapes(tiles, tileX, tileY, tileInfos, tilemapCollisionSource.Layers);

					if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Bottom) != 0) MergeNodeCollision(collisionCategories, collisionCategory, 4);

					//LeftUp 5
					tileX = x - 1;
					tileY = y - 1;
					tileCollisionShapes = FlattenTileCollisionShapes(tiles, tileX, tileY, tileInfos, tilemapCollisionSource.Layers);

					if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Right) != 0 || (tileCollisionShapes & TileCollisionShape.Bottom) != 0 ||
						collisionCategories[1].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None || collisionCategories[2].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None) MergeNodeCollision(collisionCategories, collisionCategory, 5);

					//RightUp 6
					tileX = x + 1;
					tileY = y - 1;
					tileCollisionShapes = FlattenTileCollisionShapes(tiles, tileX, tileY, tileInfos, tilemapCollisionSource.Layers);

					if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Right) != 0 || (tileCollisionShapes & TileCollisionShape.Bottom) != 0 ||
						collisionCategories[3].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None || collisionCategories[2].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None) MergeNodeCollision(collisionCategories, collisionCategory, 6);

					//RightDown 7
					tileX = x + 1;
					tileY = y + 1;
					tileCollisionShapes = FlattenTileCollisionShapes(tiles, tileX, tileY, tileInfos, tilemapCollisionSource.Layers);

					if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Right) != 0 || (tileCollisionShapes & TileCollisionShape.Bottom) != 0 ||
						collisionCategories[3].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None || collisionCategories[4].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None) MergeNodeCollision(collisionCategories, collisionCategory, 7);

					//LeftDown 8
					tileX = x - 1;
					tileY = y + 1;
					tileCollisionShapes = FlattenTileCollisionShapes(tiles, tileX, tileY, tileInfos, tilemapCollisionSource.Layers);

					if (IsSolid(tileCollisionShapes) || (tileCollisionShapes & TileCollisionShape.Right) != 0 || (tileCollisionShapes & TileCollisionShape.Bottom) != 0 ||
						collisionCategories[1].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None || collisionCategories[4].PathfindaxCollisionCategory != PathfindaxCollisionCategory.None) MergeNodeCollision(collisionCategories, collisionCategory, 8);

				}
			}
			return collisionCategories;
		}

		private bool IsSolid(TileCollisionShape tileCollisionShape)
		{
			return tileCollisionShape == TileCollisionShape.Solid || tileCollisionShape == TileCollisionShape.DiagonalDown || tileCollisionShape == TileCollisionShape.DiagonalUp;
		}

		public bool IsVisible(IDrawDevice device)
		{
			return
(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		public void Draw(IDrawDevice device)
		{
			_nodeGridVisualizer?.Draw(device);
		}

		public class TilemapColliderWithBody
		{
			public TilemapCollider TilemapCollider;
			public RigidBody RigidBody;

			public TilemapColliderWithBody(TilemapCollider tilemapCollider)
			{
				TilemapCollider = tilemapCollider;
				RigidBody = tilemapCollider.GameObj.GetComponent<RigidBody>();
			}
		}

		public struct NodeCollision
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
	}
}
