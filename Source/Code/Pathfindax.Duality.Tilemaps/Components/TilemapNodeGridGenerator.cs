using System;
using System.Collections.Generic;
using System.Linq;
using Duality;
using Duality.Components.Physics;
using Duality.Drawing;
using Duality.Plugins.Tilemaps;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Duality.Tilemaps.Components
{
	public class TilemapNodeGridGenerator : Component, ISourceNodeNetworkProvider<INodeGrid<IGridNode>, IGridNode>, ICmpRenderer, ICmpInitializable, ICmpUpdatable
	{
		private INodeGrid<IGridNode>[] _nodeGrid;
		public INodeGrid<IGridNode>[] GenerateGrid2D()
		{
			if (_nodeGrid == null)
			{
				var tilemaps = GameObj.GetComponentsInChildren<Tilemap>().ToArray();
				var baseTilemap = tilemaps.FirstOrDefault();
				if (baseTilemap == null) throw new ArgumentException("No tilemaps found in gameobject children!");
				var sourceNodeGridFactory = new SourceNodeGridFactory();
				_nodeGrid = new INodeGrid<IGridNode>[4];
				var offset = -new Vector2((baseTilemap.Size.X * baseTilemap.Tileset.Res.TileSize.X) - baseTilemap.Tileset.Res.TileSize.X, (baseTilemap.Size.Y * baseTilemap.Tileset.Res.TileSize.Y) - baseTilemap.Tileset.Res.TileSize.Y) / 2;
				var nodeGridRayCaster = new NodeGridRayCaster();
				for (int i = 0; i < 4; i++)
				{
					var collisionCategory = (CollisionCategory) (1 << i);
					var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(baseTilemap.Size.X, baseTilemap.Size.Y, new PositionF(baseTilemap.Tileset.Res.TileSize.X, baseTilemap.Tileset.Res.TileSize.Y), GenerateNodeGridNeighbours.None, new PositionF(offset.X, offset.Y));
					for (int y = 0; y < baseTilemap.Size.Y; y++)
					{
						for (int x = 0; x < baseTilemap.Size.X; x++)
						{
							var node = sourceNodeGrid.NodeArray[x, y];
							var nodesToExclude = nodeGridRayCaster.GetUnreachableNeighbours(sourceNodeGrid, node, collisionCategory);
							AddNeighbours(sourceNodeGrid.NodeArray, node, nodesToExclude.ToList());
						}
					}

					_nodeGrid[i] = sourceNodeGrid;
				}
				_nodeVisualizer = new NodeVisualizer(_nodeGrid[0], baseTilemap.Tileset.Res.TileSize.X / 2);
			}
			return _nodeGrid;
		}

		private void AddNeighbours(Array2D<IGridNode> nodeArray, IGridNode gridNode, IList<Point2> nodesToExclude)
		{
			for (var x = -1; x <= 1; x++)
			{
				for (var y = -1; y <= 1; y++)
				{
					if (x == 0 && y == 0) continue; //Skip the center since this is the node we are adding neighbours to.

					var currentPosition = new Point2(gridNode.GridX + x, gridNode.GridY + y);
					if (currentPosition.X >= 0 && currentPosition.X < nodeArray.Width && currentPosition.Y >= 0 && currentPosition.Y < nodeArray.Height && !nodesToExclude.Contains(new Point2(x, y)))
					{
						gridNode.Neighbours.Add(nodeArray[currentPosition.X, currentPosition.Y]);
					}
				}
			}
		}

		public bool IsVisible(IDrawDevice device)
		{
			return
(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None &&
(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None;
		}

		private NodeVisualizer _nodeVisualizer;
		public void Draw(IDrawDevice device)
		{
			if (_nodeVisualizer != null)
				_nodeVisualizer.Draw(device);
		}

		public float BoundRadius { get; }

		public void OnInit(InitContext context)
		{
			if (context == InitContext.Activate && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
			{
				//GenerateGrid2D();
			}
		}

		public void OnShutdown(ShutdownContext context)
		{

		}

		public void OnUpdate()
		{
			if (_nodeGrid == null)
			{
				GenerateGrid2D();
			}
		}
	}
}
