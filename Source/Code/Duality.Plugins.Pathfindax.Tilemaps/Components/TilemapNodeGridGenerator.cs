using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Tilemaps.Generators;
using Duality.Plugins.Tilemaps;
using Pathfindax.Graph;
using Pathfindax.Utils;

namespace Duality.Plugins.Pathfindax.Tilemaps.Components
{
	/// <summary>
	/// Generates a <see cref="DefinitionNodeGrid"/> from <see cref="Tilemap"/>'s.
	/// The <see cref="Tilemap"/>'s must be children of the gameobject this component is attached to.
	/// </summary>
	[EditorHintCategory(PathfindaxStrings.PathfindaxTilemap)]
	public class TilemapNodeGridGenerator : Component, IDefinitionNodeNetworkProvider<DefinitionNodeGrid>, ICmpInitializable
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
				var tilemaps = SearchTilemaps().ToArray();
				var baseTilemap = tilemaps.FirstOrDefault();
				if (baseTilemap == null)
				{
					Log.Game.WriteWarning($"{nameof(TilemapNodeGridGenerator)}: Could not find any {nameof(Tilemap)}s. Be sure to add a gameobject with a {nameof(Tilemap)} component as a child. Skipping nodegrid generation.");
					return null;
				}
				var offset = -new Vector2(baseTilemap.Size.X * baseTilemap.Tileset.Res.TileSize.X - baseTilemap.Tileset.Res.TileSize.X, baseTilemap.Size.Y * baseTilemap.Tileset.Res.TileSize.Y - baseTilemap.Tileset.Res.TileSize.Y) / 2;
				_definitionNodeGrid = new DefinitionNodeGrid(ConnectionGenerationMode, baseTilemap.Size.X, baseTilemap.Size.Y, baseTilemap.Tileset.Res.TileSize, offset);
				var tilemapColliderWithBodies = GameObj.GetComponentsInChildren<TilemapCollider>().Select(x => new TilemapColliderWithBody(x)).ToArray();
				var connectionGenerator = new TilemapNodeConnectionGenerator();
				for (int y = 0; y < _definitionNodeGrid.NodeGrid.Height; y++)
				{
					for (int x = 0; x < _definitionNodeGrid.NodeGrid.Width; x++)
					{
						connectionGenerator.CalculateGridNodeCollision(tilemapColliderWithBodies, x, y, _definitionNodeGrid.NodeGrid, CrossCorners);
					}
				}

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

		private IEnumerable<Tilemap> SearchTilemaps()
		{
			var tilemaps = GameObj.GetComponentsInChildren<Tilemap>();
			var tilemap = GameObj.GetComponent<Tilemap>();
			return tilemap != null ? tilemaps.Concat(new[] { tilemap }) : tilemaps;
		}

		public void OnInit(InitContext context)
		{
			if (context == InitContext.AddToGameObject)
			{

			}
		}

		public void OnShutdown(ShutdownContext context) { }
	}
}
