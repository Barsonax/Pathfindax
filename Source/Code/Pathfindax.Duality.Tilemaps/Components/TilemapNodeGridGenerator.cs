using System.Collections.Generic;
using System.Linq;
using System.Management.Instrumentation;
using Duality;
using Duality.Drawing;
using Duality.Plugins.Tilemaps;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Pathfindax.Duality.Tilemaps.Components
{
	public class TilemapNodeGridGenerator : Component, ISourceNodeNetworkProvider<INodeGrid<IGridNode>, IGridNode>, ICmpRenderer
	{
		private INodeGrid<IGridNode>[] _nodeGrid;
		public INodeGrid<IGridNode>[] GenerateGrid2D()
		{
			if (_nodeGrid == null)
			{
				var tilemaps = GameObj.GetComponentsInChildren<Tilemap>().ToArray();
				var baseTilemap = tilemaps.FirstOrDefault();
				if (baseTilemap == null) throw new InstanceNotFoundException("No tilemaps found in gameobject children!");
				var sourceNodeGridFactory = new SourceNodeGridFactory();
				_nodeGrid = new INodeGrid<IGridNode>[4];
				for (int i = 0; i < 4; i++)
				{
					var sourceNodeGrid = sourceNodeGridFactory.GeneratePreFilledArray(baseTilemap.Size.X, baseTilemap.Size.Y, baseTilemap.Tileset.Res.TileSize.X, GenerateNodeGridNeighbours.None);
					//TODO this is a hack since this doesnt work for tiles that do not have a equal X and Y.

					for (int y = 0; y < baseTilemap.Size.Y; y++)
					{
						for (int x = 0; x < baseTilemap.Size.X; x++)
						{
							var nodesToExclude = new HashSet<Point2>();
							foreach (var tilemap in tilemaps)
							{
								var tile = tilemap.Tiles[x, y];
								var tileinfo = tilemap.Tileset.Res.TileData[tile.BaseIndex];
								var collision = tileinfo.Collision[i];
								if (collision == TileCollisionShape.Free)
									continue;
								if ((collision & TileCollisionShape.Solid) == TileCollisionShape.Solid || (collision & TileCollisionShape.DiagonalDown) != TileCollisionShape.Free || (collision & TileCollisionShape.DiagonalUp) != TileCollisionShape.Free)
								{
									AddNodeExclude(nodesToExclude, x, y - 1);
									AddNodeExclude(nodesToExclude, x, y + 1);
									AddNodeExclude(nodesToExclude, x - 1, y);
									AddNodeExclude(nodesToExclude, x + 1, y);
									break;
								}

								if ((collision & TileCollisionShape.Top) != TileCollisionShape.Free)
									AddNodeExclude(nodesToExclude, x, y - 1);
								if ((collision & TileCollisionShape.Bottom) != TileCollisionShape.Free)
									AddNodeExclude(nodesToExclude, x, y + 1);
								if ((collision & TileCollisionShape.Left) != TileCollisionShape.Free)
									AddNodeExclude(nodesToExclude, x - 1, y);
								if ((collision & TileCollisionShape.Right) != TileCollisionShape.Free)
									AddNodeExclude(nodesToExclude, x + 1, y);

							}
							var node = sourceNodeGrid.NodeArray[x, y];
							AddNeighbours(sourceNodeGrid.NodeArray, node, nodesToExclude);
						}
					}

					_nodeGrid[i] = sourceNodeGrid;
				}
			}
			return _nodeGrid;
		}

		private void AddNeighbours(Array2D<IGridNode> nodeArray, IGridNode gridNode, HashSet<Point2> nodesToExclude)
		{
			for (var x = -1; x <= 1; x++)
			{
				for (var y = -1; y <= 1; y++)
				{
					if (x == 0 && y == 0) continue; //Skip the center since this is the node we are adding neighbours to.

					var currentPosition = new Point2(gridNode.GridX + x, gridNode.GridY + y);
					if (currentPosition.X >= 0 && currentPosition.X < nodeArray.Width && currentPosition.Y >= 0 && currentPosition.Y < nodeArray.Height && !nodesToExclude.Contains(currentPosition))
					{
						AddTwoWayNeighbour(gridNode, nodeArray[currentPosition.X, currentPosition.Y]);
					}
				}
			}
		}

		private void AddNodeExclude(HashSet<Point2> nodesToExclude, int x, int y)
		{
			nodesToExclude.Add(new Point2(x, y));
		}

		private void AddTwoWayNeighbour(IGridNode node, IGridNode nodeToAdd)
		{
			node.Neighbours.Add(node);
			nodeToAdd.Neighbours.Add(node);
		}

		public bool IsVisible(IDrawDevice device)
		{
			throw new System.NotImplementedException();
		}

		public void Draw(IDrawDevice device)
		{
			throw new System.NotImplementedException();
		}

		public float BoundRadius { get; }
	}
}
