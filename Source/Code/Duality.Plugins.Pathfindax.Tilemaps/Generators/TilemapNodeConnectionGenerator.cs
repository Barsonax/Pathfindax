using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Components.Physics;
using Duality.Plugins.Tilemaps;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Utils;

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

		/// <summary>
		/// Creates a new <see cref="TilemapNodeConnectionGenerator"/> instance and does some initialization work
		/// </summary>
		public TilemapNodeConnectionGenerator()
		{
			FillUsedLayerCache();
		}

		/// <summary>
		/// Calculates the <see cref="NodeConnection"/>s for the node at the given x and y grid coordinate
		/// </summary>
		public void CalculateGridNodeCollision(TilemapColliderWithBody[] tilemapColliderWithBodies, int x, int y, Array2D<DefinitionNode> nodeGrid, bool crossCorners)
		{
			var i = nodeGrid.ToIndex(x, y);
			ref var definitionNode = ref nodeGrid.Array[i];
			var connections = definitionNode.Connections;

			for (var index = 0; index < connections.Length; index++)
			{
				ref var nodeConnection = ref connections[index];
				var toCoords = nodeGrid.ToGrid(nodeConnection.To);
				nodeConnection.CollisionCategory = GetCollisionCategory(tilemapColliderWithBodies, x, y, toCoords.X, toCoords.Y, crossCorners);
			}
		}

		private PathfindaxCollisionCategory GetCollisionCategory(TilemapColliderWithBody[] tilemapColliderWithBodies, int fromX, int fromY, int toX, int toY, bool crossCorners)
		{
			var delta = new Point2(toX - fromX, toY - fromY);
			var cat = PathfindaxCollisionCategory.None;
			switch (delta)
			{
				case Point2 d when d.X == -1 && d.Y == 1: //LeftDown
					GetCollisionCategory(ref cat, tilemapColliderWithBodies, fromX, fromY, toX, toY, TileCollisionShape.Left | TileCollisionShape.Bottom, TileCollisionShape.Right | TileCollisionShape.Top);
					if (!crossCorners)
					{
						GetCollisionCategory(ref cat, tilemapColliderWithBodies, toX, fromY, fromX, toY, TileCollisionShape.Right | TileCollisionShape.Bottom, TileCollisionShape.Left | TileCollisionShape.Top);
					}
					break;
				case Point2 d when d.X == 1 && d.Y == 1: //RightDown
					GetCollisionCategory(ref cat, tilemapColliderWithBodies, fromX, fromY, toX, toY, TileCollisionShape.Right | TileCollisionShape.Bottom, TileCollisionShape.Left | TileCollisionShape.Top);
					if (!crossCorners)
					{
						GetCollisionCategory(ref cat, tilemapColliderWithBodies, toX, fromY, fromX, toY, TileCollisionShape.Left | TileCollisionShape.Bottom, TileCollisionShape.Right | TileCollisionShape.Top);
					}
					break;
				case Point2 d when d.X == -1 && d.Y == -1: //LeftUp
					GetCollisionCategory(ref cat, tilemapColliderWithBodies, fromX, fromY, toX, toY, TileCollisionShape.Left | TileCollisionShape.Top, TileCollisionShape.Right | TileCollisionShape.Bottom);
					if (!crossCorners)
					{
						GetCollisionCategory(ref cat, tilemapColliderWithBodies, toX, fromY, fromX, toY, TileCollisionShape.Right | TileCollisionShape.Top, TileCollisionShape.Left | TileCollisionShape.Bottom);
					}
					break;
				case Point2 d when d.X == 1 && d.Y == -1: //RightUp
					GetCollisionCategory(ref cat, tilemapColliderWithBodies, fromX, fromY, toX, toY, TileCollisionShape.Right | TileCollisionShape.Top, TileCollisionShape.Left | TileCollisionShape.Bottom);
					if (!crossCorners)
					{
						GetCollisionCategory(ref cat, tilemapColliderWithBodies, toX, fromY, fromX, toY, TileCollisionShape.Left | TileCollisionShape.Top, TileCollisionShape.Right | TileCollisionShape.Bottom);
					}
					break;

				case Point2 d when d.X == 1: //Right
					GetCollisionCategory(ref cat, tilemapColliderWithBodies, fromX, fromY, toX, toY, TileCollisionShape.Right, TileCollisionShape.Left);
					break;
				case Point2 d when d.X == -1: //Left
					GetCollisionCategory(ref cat, tilemapColliderWithBodies, fromX, fromY, toX, toY, TileCollisionShape.Left, TileCollisionShape.Right);
					break;
				case Point2 d when d.Y == 1: //Down
					GetCollisionCategory(ref cat, tilemapColliderWithBodies, fromX, fromY, toX, toY, TileCollisionShape.Bottom, TileCollisionShape.Top);
					break;
				case Point2 d when d.Y == -1: //Up
					GetCollisionCategory(ref cat, tilemapColliderWithBodies, fromX, fromY, toX, toY, TileCollisionShape.Top, TileCollisionShape.Bottom);
					break;
			}

			return cat;
		}

		private void GetCollisionCategory(ref PathfindaxCollisionCategory collisionCategory, TilemapColliderWithBody[] tilemapColliderWithBodies, int x, int y, int toX, int toY, TileCollisionShape tileCollisionShapeSelf, TileCollisionShape tileCollisionShapeOther)
		{
			foreach (var tilemapColliderWithBody in tilemapColliderWithBodies)
			{
				var tilemapCollisionCat = (PathfindaxCollisionCategory)tilemapColliderWithBody.RigidBody.CollisionCategory;
				if ((collisionCategory | tilemapCollisionCat) == collisionCategory) continue;
				foreach (var tilemapCollisionSource in tilemapColliderWithBody.TilemapCollisionSources)
				{
					if (DoesCollide(tilemapCollisionSource, x, y, tileCollisionShapeSelf) || DoesCollide(tilemapCollisionSource, toX, toY, tileCollisionShapeOther))
					{
						collisionCategory |= tilemapCollisionCat;
					}
					if ((collisionCategory | tilemapCollisionCat) == collisionCategory) break;
				}
			}
		}

		private bool DoesCollide(TilemapCollisionSource tilemapCollisionSource, int x, int y, TileCollisionShape tileCollisionShape)
		{
			var tileInfos = tilemapCollisionSource.SourceTilemap.Tileset.Res.TileData;
			var tileGrid = tilemapCollisionSource.SourceTilemap.Tiles;
			var tile = tileGrid[x, y];
			var tileInfo = tileInfos[tile.Index];
			var usedLayers = _usedLayersCache[(int)tilemapCollisionSource.Layers];
			foreach (var usedLayer in usedLayers)
			{
				if ((tileCollisionShape & tileInfo.Collision[usedLayer]) != 0)
					return true;

			}

			return false;
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