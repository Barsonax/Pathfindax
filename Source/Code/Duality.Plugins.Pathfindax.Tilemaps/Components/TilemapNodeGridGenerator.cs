using System;
using System.Linq;
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
	[EditorHintCategory(PathfindaxStrings.PathfindaxTilemap)]
	public class TilemapNodeGridGenerator : Component, ISourceNodeNetworkProvider<INodeGrid<IGridNode>>, ICmpUpdatable
	{
		public float BoundRadius { get; }
		private long _counter;
		private NodeGridVisualizer _nodeGridVisualizer;
		private INodeGrid<IGridNode> _nodeGrid;

		public INodeGrid<IGridNode> GenerateGrid2D()
		{
			if (_counter < 2) throw new Exception("The nodegrid is not yet initialized please call this later");
			if (_nodeGrid == null)
			{
				var tilemaps = GameObj.GetComponentsInChildren<Tilemap>().ToArray();
				var baseTilemap = tilemaps.FirstOrDefault();
				if (baseTilemap == null) throw new ArgumentException("No tilemaps found in gameobject children!");
				var sourceNodeGridFactory = new SourceNodeGridFactory();
				var offset = -new Vector2((baseTilemap.Size.X * baseTilemap.Tileset.Res.TileSize.X) - baseTilemap.Tileset.Res.TileSize.X, (baseTilemap.Size.Y * baseTilemap.Tileset.Res.TileSize.Y) - baseTilemap.Tileset.Res.TileSize.Y) / 2;
				var nodeGridRayCaster = new NodeGridRayCaster();
				var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(baseTilemap.Size.X, baseTilemap.Size.Y, new PositionF(baseTilemap.Tileset.Res.TileSize.X, baseTilemap.Tileset.Res.TileSize.Y), GenerateNodeGridConnections.All, new PositionF(offset.X, offset.Y));
				for (int y = 0; y < baseTilemap.Size.Y; y++)
				{
					for (int x = 0; x < baseTilemap.Size.X; x++)
					{
						var node = sourceNodeGrid.NodeArray[x, y];
						foreach (var nodeConnection in node.Connections)
						{
							nodeConnection.CollisionCategory = nodeGridRayCaster.GetCollisionCategory(node, nodeConnection.Node);
						}
					}
					_nodeGrid = sourceNodeGrid;
				}
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
			if (_nodeGridVisualizer != null)
				_nodeGridVisualizer.Draw(device);
		}

		public void OnUpdate()
		{
			_counter++;
		}
	}
}
