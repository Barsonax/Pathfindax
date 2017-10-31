using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Tilemaps.Generators;
using Duality.Plugins.Tilemaps;
using Pathfindax.Factories;
using Pathfindax.Grid;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Tilemaps.Components
{
	/// <summary>
	/// Generates a <see cref="SourceNodeGrid"/> from <see cref="Tilemap"/>'s.
	/// The <see cref="Tilemap"/>'s must be children of the gameobject this component is attached to.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTilemap)]
	public class TilemapNodeGridGenerator : Component, ISourceNodeNetworkProvider<SourceNodeGrid>
	{
		/// <summary>
		/// The maximum clearance that will be calculated. For performance reasons try to keep this as small as possible. This should be no larger than the size of your largest agent in nodes.
		/// </summary>
		public int MaxCalculatedClearance { get; set; }

		/// <summary>
		/// The movement penalties per tile which can be used to make the pathfinder try to avoid certain nodes. The index of the value in the array is equal to the index of the tile.
		/// </summary>
		public byte[] MovementPenalties { get; set; }

		private SourceNodeGrid _sourceNodeGrid;

		/// <summary>
		/// Generates a fully initialized <see cref="ISourceNodeGrid{TNode}"/> that can be used as a source nodegrid for pathfinders.
		/// </summary>
		/// <returns></returns>
		public SourceNodeGrid GenerateGrid2D()
		{
			if (_sourceNodeGrid == null)
			{				
				var tilemaps = SearchTilemaps().ToArray();
				var baseTilemap = tilemaps.FirstOrDefault();
				if (baseTilemap == null)
				{
					Log.Game.WriteWarning($"{nameof(TilemapNodeGridGenerator)}: Could not find any {nameof(Tilemap)}s. Be sure to add a gameobject with a {nameof(Tilemap)} component as a child. Skipping nodegrid generation.");
					return null;
				}
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
						var definitionNode = _sourceNodeGrid.DefinitionNodeArray[i];
						connectionGenerator.CalculateGridNodeCollision(tilemapColliderWithBodies, _sourceNodeGrid.DefinitionNodeArray[i], _sourceNodeGrid);

						if (MovementPenalties != null)
						{
							var nodeGridCoordinates = _sourceNodeGrid.DefinitionNodeArray.GetCoordinates(definitionNode.Index.Index);
							var index = baseTilemap.Tiles[nodeGridCoordinates.X, nodeGridCoordinates.Y].Index;
							if (index < MovementPenalties.Length)
								definitionNode.MovementPenalty = MovementPenalties[index];
						}
					}
				});
			}
			return _sourceNodeGrid;
		}

		private IEnumerable<Tilemap> SearchTilemaps()
		{
			var tilemaps = GameObj.GetComponentsInChildren<Tilemap>();
			var tilemap = GameObj.GetComponent<Tilemap>();
			return tilemap != null ? tilemaps.Concat(new[] { tilemap }) : tilemaps;
		}
	}
}
