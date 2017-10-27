using System.Collections.Generic;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Grid;
using Pathfindax.Nodes;

namespace Pathfindax.Factories
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
		public SourceNodeGrid GeneratePreFilledArray(int width, int height, Vector2 nodeSize, GenerateNodeGridConnections generateNodeGridConnections, Vector2 offset = default(Vector2))
		{
			var array = new Array2D<SourceGridNode>(width, height);
			var sourceNodeGrid = new SourceNodeGrid(array, nodeSize, offset);
			for (ushort y = 0; y < height; y++)
			{
				for (ushort x = 0; x < width; x++)
				{
					var node = new SourceGridNode(sourceNodeGrid, x, y, 1);
					array[x, y] = node;
				}
			}

			if (generateNodeGridConnections != GenerateNodeGridConnections.None)
			{
				for (var y = 0; y < height; y++)
				{
					for (var x = 0; x < width; x++)
					{
						var node = array[x, y];
						var neighbours = GetNeighbours(array, node, generateNodeGridConnections);
						node.Connections = new NodeConnection<ISourceGridNode>[neighbours.Count];
						for (var index = 0; index < neighbours.Count; index++)
						{
							var neighbour = neighbours[index];
							node.Connections[index] = new NodeConnection<ISourceGridNode>(neighbour);
						}
					}
				}
			}
			return sourceNodeGrid;
		}

		/// <summary>
		/// Calculates the clearances up to a maximum <paramref name="maxClearance"/>
		/// </summary>
		/// <param name="sourceNodeGrid"></param>
		/// <param name="from"></param>
		/// <param name="maxClearance"></param>
		/// <returns></returns>
		public List<GridClearance> CalculateGridNodeClearances(ISourceNodeGrid<ISourceGridNode> sourceNodeGrid, ISourceGridNode from, int maxClearance)
		{
			var clearances = new List<GridClearance>();
			var hashset = new HashSet<PathfindaxCollisionCategory>();
			for (var i = 0; i < maxClearance; i++)
			{
				var nodes = new List<NodeConnection<ISourceGridNode>>(1 + i * 16); //Since we know the amount of connections that will likely be in this list we can specify the size beforehand for some extra performance.
				foreach (var gridNode in GetNodesInArea(sourceNodeGrid, from.GridX, from.GridY + i, i + 1, 1))
				{
					nodes.AddRange(gridNode.Connections);
				}

				foreach (var gridNode in GetNodesInArea(sourceNodeGrid, from.GridX + i, from.GridY, 1, i))
				{
					nodes.AddRange(gridNode.Connections);
				}
				var maxGridX = from.GridX + i + 1;
				var maxGridY = from.GridY + i + 1;
				var collisionCategory = PathfindaxCollisionCategory.None;
				foreach (var connection in nodes)
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
			return clearances;
		}

		private static List<ISourceGridNode> GetNodesInArea(ISourceNodeGrid<ISourceGridNode> sourceNodeGrid, int gridX, int gridY, int width, int height)
		{
			var nodes = new List<ISourceGridNode>();
			for (var y = gridY; y < gridY + height; y++)
			{
				for (var x = gridX; x < gridX + width; x++)
				{
					if (x < sourceNodeGrid.NodeArray.Width && y < sourceNodeGrid.NodeArray.Height)
						nodes.Add(sourceNodeGrid.NodeArray[x, y]);
				}
			}
			return nodes;
		}

		private static IList<ISourceGridNode> GetNeighbours(IReadOnlyArray2D<ISourceGridNode> nodeArray, IGridNode gridNode, GenerateNodeGridConnections generateNodeGridConnections)
		{
			var neighbours = new List<ISourceGridNode>(8);

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
