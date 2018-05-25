using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Tilemaps.Generators;
using Duality.Plugins.Tilemaps;
using Pathfindax.Factories;
using Pathfindax.Graph;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Tilemaps.Components
{
	/// <summary>
	/// Generates a <see cref="DefinitionNodeGrid"/> from <see cref="Tilemap"/>'s.
	/// The <see cref="Tilemap"/>'s must be children of the gameobject this component is attached to.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTilemap)]
	public class TilemapNodeGridGenerator : Component, IDefinitionNodeNetworkProvider<DefinitionNodeGrid>
	{
		/// <summary>
		/// Specifies what connections to generate.
		/// </summary>
		public GenerateNodeGridConnections ConnectionGenerationMode { get; set; } = GenerateNodeGridConnections.All;

		/// <summary>
		/// Is it possible to cross corners? Only applicable when <see cref="GenerateNodeGridConnections.All"/> is used as <see cref="ConnectionGenerationMode"/>.
		/// </summary>
		public bool CrossCorners { get; set; }

		private float[] _movementPenalties;
		/// <summary>
		/// The movement penalties per tile which can be used to make the pathfinder try to avoid certain nodes. The index of the value in the array is equal to the index of the tile.
		/// </summary>
		public float[] MovementPenalties
		{
			get => _movementPenalties;
			set
			{
				var oldLength = MathF.Clamp(_movementPenalties?.Length - 1 ?? 0, 0, int.MaxValue);
				_movementPenalties = value;
				for (var i = oldLength; i < _movementPenalties.Length; i++)
				{
					Log.Game.Write(i.ToString());
					_movementPenalties[i] = 1f;
				}
			}
		}

		[DontSerialize]
		private DefinitionNodeGrid _definitionNodeGrid;

		/// <summary>
		/// Generates a fully initialized <see cref="DefinitionNodeGrid"/> that can be used as a source nodegrid for pathfinders.
		/// </summary>
		/// <returns></returns>
		public DefinitionNodeGrid GenerateGrid2D()
		{
			if (_definitionNodeGrid == null)
			{
				var watch = Stopwatch.StartNew();
		
				var tilemapColliderWithBodies = GameObj.GetComponentsInChildren<TilemapCollider>().Concat(GameObj.GetComponents<TilemapCollider>()).Select(x => new TilemapColliderWithBody(x)).ToArray();
			    var baseTilemap = tilemapColliderWithBodies.FirstOrDefault()?.TilemapCollisionSources.FirstOrDefault().SourceTilemap;
			    if (baseTilemap == null)
			    {
			        Log.Game.WriteWarning($"{nameof(TilemapNodeGridGenerator)}: Could not find any {nameof(Tilemap)}s. Be sure to add a gameobject with a {nameof(Tilemap)} component as a child. Skipping nodegrid generation.");
			        return null;
			    }

                var connectionGenerator = new TilemapNodeGridCollisionMaskGenerator();
				var collisionLayers = connectionGenerator.GetCollisionLayers(tilemapColliderWithBodies, baseTilemap.Size.X, baseTilemap.Size.Y);
				var factory = new DefinitionNodeGridFactory();
				var nodeGrid = factory.GeneratePreFilledArray(ConnectionGenerationMode, collisionLayers, CrossCorners);
				var offset = new Vector2(
					-(baseTilemap.Size.X * baseTilemap.Tileset.Res.TileSize.X - baseTilemap.Tileset.Res.TileSize.X) / 2 * GameObj.Transform.Scale + GameObj.Transform.Pos.X,
					-(baseTilemap.Size.Y * baseTilemap.Tileset.Res.TileSize.Y - baseTilemap.Tileset.Res.TileSize.Y) / 2 * GameObj.Transform.Scale + GameObj.Transform.Pos.Y);
				_definitionNodeGrid = new DefinitionNodeGrid(nodeGrid, baseTilemap.Tileset.Res.TileSize * GameObj.Transform.Scale, offset);

				if (MovementPenalties != null)
				{
					for (int i = 0; i < _definitionNodeGrid.NodeArray.Length; i++)
					{
						ref var definitionNode = ref _definitionNodeGrid.NodeGrid.Array[i];

						var index = baseTilemap.Tiles[(int)definitionNode.Position.X, (int)definitionNode.Position.Y].Index;
						if (index < MovementPenalties.Length)
							definitionNode.MovementCostModifier = MovementPenalties[index];
					}
				}

				Debug.WriteLine($"Generated definition nodegrid for tilemap in {watch.ElapsedMilliseconds} ms");
			}
			return _definitionNodeGrid;
		}
	}
}
