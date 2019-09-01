using System;
using System.Collections.Generic;
using System.Linq;
using Duality.Components.Physics;
using Duality.Plugins.Tilemaps;
using Pathfindax.Factories;
using Pathfindax.Nodes;

namespace Duality.Plugins.Pathfindax.Tilemaps.Generators
{
	/// <summary>
	/// Generates connections and base clearances for nodes based upon information from <see cref="TilemapCollisionSource"/>s
	/// </summary>
	public class TilemapNodeGridCollisionMaskGenerator
	{
		private readonly int[][] _usedLayersCache = new int[16][];

		/// <summary>
		/// Creates a new <see cref="TilemapNodeGridCollisionMaskGenerator"/> instance and does some initialization work
		/// </summary>
		public TilemapNodeGridCollisionMaskGenerator()
		{
			FillUsedLayerCache();
		}

		/// <summary>
		/// 
		/// </summary>
		/// <param name="tilemapColliderWithBodies"></param>
		/// <param name="width"></param>
		/// <param name="height"></param>
		/// <returns></returns>
		public NodeGridCollisionMask GetCollisionLayers(TilemapColliderWithBody[] tilemapColliderWithBodies, int width, int height)
		{
			var mask = new NodeGridCollisionMask(tilemapColliderWithBodies.Select(x => x.CollisionCategory).ToArray(), width, height);
			for (var i = 0; i < mask.Layers.Length; i++)
			{
				var currentLayer = mask.Layers[i];
				foreach (var tilemapCollisionSource in tilemapColliderWithBodies[i].TilemapCollisionSources)
				{
					for (var y = 0; y < height; y++)
					{
						for (var x = 0; x < width; x++)
						{
							currentLayer.CollisionDirections[x, y] |= GetColShape(tilemapCollisionSource, x, y);
						}
					}
				}
			}
			return mask;
		}

		private CollisionDirection GetColShape(TilemapCollisionSource tilemapCollisionSource, int x, int y)
		{
			var tileInfos = tilemapCollisionSource.SourceTilemap.Tileset.Res.TileData;
			var tileGrid = tilemapCollisionSource.SourceTilemap.Tiles;
			var tile = tileGrid[x, y];
			var tileInfo = tileInfos[tile.Index];
			var usedLayers = _usedLayersCache[(int)tilemapCollisionSource.Layers];
			var shape = TileCollisionShape.Free;
			foreach (var usedLayer in usedLayers)
			{
				shape |= tileInfo.Collision[usedLayer];
			}
			return (CollisionDirection)shape;
		}

		private void FillUsedLayerCache()
		{
			var list = new List<TileCollisionLayer>();
			foreach (TileCollisionLayer value in Enum.GetValues(typeof(TileCollisionLayer)))
			{
				if (value != TileCollisionLayer.All)
				{
					list.Add(value);
				}
			}
			var tileCollisionLayers = list.ToArray();

			for (var i = 0; i < 16; i++)
			{
				if (i == 16)
				{
					_usedLayersCache[i] = new List<int> { 0, 1, 2, 3 }.ToArray();
				}
				var result = new List<int>();
				for (var index = 1; index < tileCollisionLayers.Length; index++)
				{
					var definitionTileCollisionLayer = tileCollisionLayers[index];
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
		/// The <see cref="RigidBody"/> that is on the same <see cref="GameObject"/> as the <see cref="TilemapCollider"/>
		/// </summary>
		public readonly PathfindaxCollisionCategory CollisionCategory;

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
			CollisionCategory = (PathfindaxCollisionCategory)tilemapCollider.GameObj.GetComponent<RigidBody>().CollisionCategory;
			TilemapCollisionSources = tilemapCollider.CollisionSource.ToArray();
		}
	}
}