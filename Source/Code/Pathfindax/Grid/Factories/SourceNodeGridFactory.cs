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
			for (int y = 0; y < height; y++)
			{
				for (int x = 0; x < width; x++)
				{
					var node = new GridNode(sourceNodeGrid, new PositionF(x * nodeSize.X, y * nodeSize.Y), x, y);
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
						foreach (var neighbour in neighbours)
						{
							if (neighbour != null)
							{
								node.Connections.Add(new NodeConnection<IGridNode>(neighbour));
							}
							else
							{
								node.Connections.Add(null);
							}						
						}
					}
				}
			}
			return sourceNodeGrid;
		}

		public IList<GridClearance> CalculateGridNodeClearances(IGridNode from, int maxClearance)
		{
			var clearances = new List<GridClearance>();
			var previousNodes = new List<IGridNode>();
			var currentNodes = new List<IGridNode>();
			currentNodes.Add(from);
			for (int i = 1; i < maxClearance; i++)
			{
				var nextConnections = new List<NodeConnection<IGridNode>>();
				foreach (var currentNode in currentNodes)
				{
					if (currentNode.Connections[4] != null)
						nextConnections.Add(currentNode.Connections[4]); //in positive x direction
					if (currentNode.Connections[7] != null)
						nextConnections.Add(currentNode.Connections[7]); //in positive x and y direction
					if (currentNode.Connections[6] != null)
						nextConnections.Add(currentNode.Connections[6]); //in positive y direction
				}
				var pathfindaxCollisionCategory = PathfindaxCollisionCategory.None;
				foreach (var collisionCategory in nextConnections.Select(x => x.CollisionCategory))
				{
					pathfindaxCollisionCategory = pathfindaxCollisionCategory | collisionCategory;
				}
				clearances.Add(new GridClearance(pathfindaxCollisionCategory, i));
				previousNodes.AddRange(currentNodes);
				currentNodes.Clear();
				currentNodes.AddRange(nextConnections.Select(x => x.Node));
			}
			return clearances;
		}

		private IList<IGridNode> GetNeighbours(Array2D<IGridNode> nodeArray, IGridNodeBase gridNode, GenerateNodeGridConnections generateNodeGridConnections)
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
					else
					{
						neighbours.Add(null);
					}
				}
			}
			return neighbours;
		}
	}
}
