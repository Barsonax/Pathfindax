using System.Collections.Concurrent;
using System.Linq;
using System.Threading.Tasks;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Tilemaps.Generators;
using Duality.Plugins.Tilemaps;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Tilemaps.Components
{
	/// <summary>
	/// Generates a <see cref="ISourceNodeGrid{TNode}"/> from <see cref="Tilemap"/>'s.
	/// The <see cref="Tilemap"/>'s must be children of the gameobject this component is attached to.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTilemap)]
	public class TilemapNodeGridGenerator : Component, ISourceNodeNetworkProvider<ISourceNodeGrid<ISourceGridNode>>
	{
		/// <summary>
		/// The maximum clearance that will be calculated. For performance reasons try to keep this as small as possible. This should be no larger than the size of your largest agent in nodes.
		/// </summary>
		public int MaxCalculatedClearance { get; set; }

		/// <summary>
		/// The movement penalties per tile which can be used to make the pathfinder try to avoid certain nodes. The index of the value in the array is equal to the index of the tile.
		/// </summary>
		public byte[] MovementPenalties { get; set; }

		private ISourceNodeGrid<ISourceGridNode> _sourceNodeGrid;

		/// <summary>
		/// Generates a fully initialized <see cref="ISourceNodeGrid{TNode}"/> that can be used as a source nodegrid for pathfinders.
		/// </summary>
		/// <returns></returns>
		public ISourceNodeGrid<ISourceGridNode> GenerateGrid2D()
		{
			if (_sourceNodeGrid == null)
			{
				var tilemaps = GameObj.GetComponentsInChildren<Tilemap>().ToArray();
				var baseTilemap = tilemaps.First();
				var offset = -new Vector2(baseTilemap.Size.X * baseTilemap.Tileset.Res.TileSize.X - baseTilemap.Tileset.Res.TileSize.X, baseTilemap.Size.Y * baseTilemap.Tileset.Res.TileSize.Y - baseTilemap.Tileset.Res.TileSize.Y) / 2;
				var sourceNodeGridFactory = new SourceNodeGridFactory();
				_sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(baseTilemap.Size.X, baseTilemap.Size.Y, new Vector2(baseTilemap.Tileset.Res.TileSize.X, baseTilemap.Tileset.Res.TileSize.Y), GenerateNodeGridConnections.None, new Vector2(offset.X, offset.Y));
				var tilemapColliderWithBodies = GameObj.GetComponentsInChildren<TilemapCollider>().Select(x => new TilemapColliderWithBody(x)).ToArray();
				var partioner = Partitioner.Create(0, _sourceNodeGrid.NodeCount);

				Parallel.ForEach(partioner, range =>
				{
					var connectionGenerator = new TilemapNodeConnectionGenerator();
					for (var i = range.Item1; i < range.Item2; i++)
					{
						connectionGenerator.CalculateGridNodeCollision(tilemapColliderWithBodies, _sourceNodeGrid.NodeArray[i], _sourceNodeGrid);
					}
				});

				Parallel.ForEach(_sourceNodeGrid, gridNode =>
				{
					if (MovementPenalties != null)
					{
						var index = baseTilemap.Tiles[gridNode.GridX, gridNode.GridY].Index;
						if (index < MovementPenalties.Length)
							gridNode.MovementPenalty = MovementPenalties[index];
					}

					var clearances = sourceNodeGridFactory.CalculateGridNodeClearances(_sourceNodeGrid, gridNode, MaxCalculatedClearance);
					if (clearances.Count > 0)
					{
						gridNode.Clearances = gridNode.Clearances == null ? clearances.ToArray() : gridNode.Clearances.Concat(clearances).ToArray();
					}
				});
			}
			return _sourceNodeGrid;
		}
	}
}
