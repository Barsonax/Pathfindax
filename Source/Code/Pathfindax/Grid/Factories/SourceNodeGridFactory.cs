using System.Collections.Generic;
using System.Linq;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	public class SourceNodeGridFactory
	{
		/// <summary>
		/// Returns a preconfigured <see cref="Array2D{TItem}"/> which can be used to make a <see cref="SourceNodeGrid"/>
		/// </summary>
		/// <param name="width"></param>
		/// <param name="height"></param>
		/// <param name="nodeSize"></param>
		/// <param name="generateNodeGridConnections"></param>
		/// <param name="offset"></param>
		/// <returns></returns>
		public SourceNodeGrid GeneratePreFilledArray(int width, int height, PositionF nodeSize, GenerateNodeGridConnections generateNodeGridConnections, PositionF offset = default(PositionF))
		{
			var array = new Array2D<IGridNode>(width, height);
			var sourceNodeGrid = new SourceNodeGrid(array, nodeSize, offset);
			for (ushort y = 0; y < height; y++)
			{
				for (ushort x = 0; x < width; x++)
				{
					var node = new GridNode(sourceNodeGrid, x, y, 1);
					array[x, y] = node;
				}
			}

			if (generateNodeGridConnections != GenerateNodeGridConnections.None)
			{
				for (int y = 0; y < height; y++)
				{
					for (int x = 0; x < width; x++)
					{
						var node = array[x, y];
						var neighbours = GetNeighbours(array, node, generateNodeGridConnections);
						node.Connections = new NodeConnection<IGridNode>[neighbours.Count];
						for (int index = 0; index < neighbours.Count; index++)
						{
							var neighbour = neighbours[index];
							node.Connections[index] = new NodeConnection<IGridNode>(neighbour);
						}
					}
				}
			}
			return sourceNodeGrid;
		}

		/// <summary>
		/// Calculates the clearances up to a maximum <paramref name="maxClearance"/>
		/// </summary>
		/// <param name="nodeGrid"></param>
		/// <param name="from"></param>
		/// <param name="maxClearance"></param>
		/// <returns></returns>
		public GridClearance[] CalculateGridNodeClearances(INodeGrid<IGridNode> nodeGrid, IGridNode from, int maxClearance)
		{
			var clearances = new List<GridClearance>();
			var hashset = new HashSet<PathfindaxCollisionCategory>();
			for (var i = 0; i < maxClearance; i++)
			{
				var nodes = new List<IGridNode>(1 + i * 2); //Since we know the amount of nodes that will be in this list we can specify the size beforehand for some extra performance.
				foreach (var gridNode in GetNodesInArea(nodeGrid, from.GridX, from.GridY + i, i + 1, 1))
				{
					nodes.Add(gridNode);
				}

				foreach (var gridNode in GetNodesInArea(nodeGrid, from.GridX + i, from.GridY, 1, i))
				{
					nodes.Add(gridNode);
				}
				var maxGridX = from.GridX + i + 1;
				var maxGridY = from.GridY + i + 1;
				var collisionCategory = PathfindaxCollisionCategory.None;
				foreach (var connection in nodes.SelectMany(x => x.Connections))
				{
					if (connection.To.GridX >= from.GridX && connection.To.GridY >= from.GridY && connection.To.GridX <= maxGridX && connection.To.GridY <= maxGridY)
					{
						collisionCategory = collisionCategory | connection.CollisionCategory;
					}
				}
				if (collisionCategory != PathfindaxCollisionCategory.None && !hashset.Contains(collisionCategory))
				{
					hashset.Add(collisionCategory);
					clearances.Add(new GridClearance(collisionCategory, i + 1));
				}

			}
			return clearances.Count > 0 ? clearances.ToArray() : null;
		}

		private IList<IGridNode> GetNodesInArea(INodeGrid<IGridNode> nodeGrid, int gridX, int gridY, int width, int height)
		{
			var nodes = new List<IGridNode>();
			for (int y = gridY; y < gridY + height; y++)
			{
				for (int x = gridX; x < gridX + width; x++)
				{
					if (x < nodeGrid.NodeArray.Width && y < nodeGrid.NodeArray.Height)
						nodes.Add(nodeGrid.NodeArray[x, y]);
				}
			}
			return nodes;
		}

		public IList<IGridNode> GetNeighbours(Array2D<IGridNode> nodeArray, IGridNodeBase gridNode, GenerateNodeGridConnections generateNodeGridConnections)
		{
			var neighbours = new List<IGridNode>(8);

			for (var y = -1; y <= 1; y++)
			{
				for (var x = -1; x <= 1; x++)
				{
					if (x == 0 && y == 0) continue; //Skip the center since this is the node we are adding neighbours to.

					var checkX = gridNode.GridX + x;
					var checkY = gridNode.GridY + y;

					if (checkX >= 0 && checkX < nodeArray.Width && checkY >= 0 && checkY < nodeArray.Height)
					{
						if (generateNodeGridConnections == GenerateNodeGridConnections.NoDiagonal)
						{
							if (x == 1 && y == 1 || x == -1 && y == 1 || x == -1 && y == -1 || x == 1 && y == -1)
							{
								neighbours.Add(null);
								continue;
							}
						}

						neighbours.Add(nodeArray[checkX, checkY]);
					}
				}
			}
			return neighbours;
		}
	}
}
