using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
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
	public class TilemapNodeGridGenerator : Component, ISourceNodeNetworkProvider<INodeGrid<IGridNode>>, ICmpUpdatable
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

		private long _counter;
		private NodeGridVisualizer _nodeGridVisualizer;
		private INodeGrid<IGridNode> _nodeGrid;

		public INodeGrid<IGridNode> GenerateGrid2D()
		{
			if (_counter < 3) throw new Exception("The nodegrid is not yet initialized please call this later");
			if (_nodeGrid == null)
			{
				var tilemaps = GameObj.GetComponentsInChildren<Tilemap>().ToArray();
				var baseTilemap = tilemaps.FirstOrDefault();
				if (baseTilemap == null) throw new ArgumentException("No tilemaps found in gameobject children!");
				var sourceNodeGridFactory = new SourceNodeGridFactory();
				var offset = -new Vector2((baseTilemap.Size.X * baseTilemap.Tileset.Res.TileSize.X) - baseTilemap.Tileset.Res.TileSize.X, (baseTilemap.Size.Y * baseTilemap.Tileset.Res.TileSize.Y) - baseTilemap.Tileset.Res.TileSize.Y) / 2;
				var nodeGridRayCaster = new NodeGridRayCaster();
				_nodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(baseTilemap.Size.X, baseTilemap.Size.Y, new PositionF(baseTilemap.Tileset.Res.TileSize.X, baseTilemap.Tileset.Res.TileSize.Y), GenerateNodeGridConnections.None, new PositionF(offset.X, offset.Y));
				foreach (var gridNode in _nodeGrid)
				{
					var neighbours = sourceNodeGridFactory.GetNeighbours(_nodeGrid.NodeArray, gridNode, GenerateNodeGridConnections.All);
					gridNode.Connections = new NodeConnection<IGridNode>[neighbours.Count];
					for (int index = 0; index < gridNode.Connections.Length; index++)
					{
						var neighbour = neighbours[index];
						gridNode.Connections[index] = new NodeConnection<IGridNode>(neighbour, nodeGridRayCaster.GetConnectionCollisionCategory(gridNode, neighbour));
					}
				}

				Parallel.ForEach(_nodeGrid, gridNode =>
				{
					if (MovementPenalties != null && baseTilemap.Tiles[gridNode.GridX, gridNode.GridY].Index < MovementPenalties.Length)
						gridNode.MovementPenalty = MovementPenalties[baseTilemap.Tiles[gridNode.GridX, gridNode.GridY].Index];

					var clearances = new List<GridClearance>();
					var collisionCategory = PathfindaxCollisionCategory.None;
					foreach (var tilemap in tilemaps)
					{
						var index = tilemap.Tiles[gridNode.GridX, gridNode.GridY].Index;
						var collisionInfo = tilemap.Tileset.Res.TileData[index].Collision;
						for (int i = 0; i < TileCollisionShapes.LayerCount; i++)
						{
							if (collisionInfo[i] == TileCollisionShape.Solid || collisionInfo[i] == TileCollisionShape.DiagonalDown || collisionInfo[i] == TileCollisionShape.DiagonalUp)
							{
								collisionCategory = collisionCategory | (PathfindaxCollisionCategory)(1 << i);
							}
						}
					}
					if (collisionCategory != PathfindaxCollisionCategory.None)
						clearances.Add(new GridClearance(collisionCategory, 0)); //This node is blocked so it has a clearance of 0.
					clearances.AddRange(sourceNodeGridFactory.CalculateGridNodeClearances(_nodeGrid, gridNode, MaxCalculatedClearance));
					if (clearances.Count > 0) gridNode.Clearances = clearances.ToArray();
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

		public void OnUpdate()
		{
			_counter++;
		}
	}
}
