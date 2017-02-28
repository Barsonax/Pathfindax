using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Duality.Components.Physics;
using Duality.Drawing;
using Duality.Editor;
using Duality.Plugins.Pathfindax.Grid;
using Duality.Plugins.Pathfindax.Tilemaps.Generators;
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
				var partioner = Partitioner.Create(0, _nodeGrid.NodeCount);
				var watch = new Stopwatch();
				watch.Start();
				Parallel.ForEach(partioner, range =>
				{
					var connectionGenerator = new TilemapNodeConnectionGenerator();
					for (int i = range.Item1; i < range.Item2; i++)
					{
						connectionGenerator.CalculateGridNodeCollision(tilemapColliderWithBodies, _nodeGrid.NodeArray[i], _nodeGrid);
					}
				});
				watch.Stop();
				Debug.WriteLine(watch.ElapsedMilliseconds);

				Parallel.ForEach(_nodeGrid, gridNode =>
				{
					if (MovementPenalties != null)
					{
						var index = baseTilemap.Tiles[gridNode.GridX, gridNode.GridY].Index;
						if (index < MovementPenalties.Length)
							gridNode.MovementPenalty = MovementPenalties[index];
					}

					var clearances = sourceNodeGridFactory.CalculateGridNodeClearances(_nodeGrid, gridNode, MaxCalculatedClearance);
					if (clearances.Count > 0)
					{
						gridNode.Clearances = gridNode.Clearances == null ? clearances.ToArray() : gridNode.Clearances.Concat(clearances).ToArray();
					}
				});
				_nodeGridVisualizer = new NodeGridVisualizer(_nodeGrid);
			}
			return _nodeGrid;
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
	}
}
