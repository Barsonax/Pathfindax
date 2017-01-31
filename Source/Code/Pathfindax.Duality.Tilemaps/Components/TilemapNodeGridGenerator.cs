using Duality;
using Duality.Plugins.Tilemaps;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Duality.Tilemaps.Components
{
	public class TilemapNodeGridGenerator : Component
	{
		public void ffoo()
		{
			var tilemap = GameObj.GetComponent<Tilemap>();
			var nodeArray = new Array2D<IGridNodeBase>(tilemap.Size.X, tilemap.Size.Y);

			for (int y = 0; y < tilemap.Size.Y; y++)
			{
				for (int x = 0; x < tilemap.Size.X; x++)
				{
					var position = new PositionF(tilemap.Tileset.Res.TileSize.X * x, tilemap.Tileset.Res.TileSize.Y * y);
					nodeArray[x, y] = new GridNode(position, x, y);
				}
			}

			for (int y = 0; y < tilemap.Size.Y; y++)
			{
				for (int x = 0; x < tilemap.Size.X; x++)
				{
					var tile = tilemap.Tiles[x, y];
					var tileinfo = tilemap.Tileset.Res.TileData[tile.BaseIndex];

					//TODO: based on the collision set walkable/generate neighbours here.
				}
			}
		}
	}
}
