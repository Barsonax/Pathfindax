using System.Collections.Generic;
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

			for (int y = 0; y < height; y++)
			{
				for (int x = 0; x < width; x++)
				{
					var node = new GridNode(new PositionF(x * nodeSize.X, y * nodeSize.Y), x, y);
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
							node.Connections.Add(neighbour);
						}
					}
				}
			}
			return new SourceNodeGrid(array, nodeSize, offset);
		}

		private IList<IGridNode> GetNeighbours(Array2D<IGridNode> nodeArray, IGridNodeBase gridNode, GenerateNodeGridConnections generateNodeGridConnections)
		{
			var neighbours = new List<IGridNode>();

			for (var x = -1; x <= 1; x++)
			{
				for (var y = -1; y <= 1; y++)
				{
					if (x == 0 && y == 0) continue; //Skip the center since this is the node we are adding neighbours to.

					var checkX = gridNode.GridX + x;
					var checkY = gridNode.GridY + y;

					if (checkX >= 0 && checkX < nodeArray.Width && checkY >= 0 && checkY < nodeArray.Height)
					{
						if (generateNodeGridConnections == GenerateNodeGridConnections.NoDiagonal)
						{
							if (x == 1 && y == 1 && !CheckWalkable(nodeArray, gridNode.GridX, gridNode.GridY + 1) &&
								!CheckWalkable(nodeArray, gridNode.GridX + 1, gridNode.GridY)) continue;
							if (x == -1 && y == 1 && !CheckWalkable(nodeArray, gridNode.GridX, gridNode.GridY + 1) &&
								!CheckWalkable(nodeArray, gridNode.GridX - 1, gridNode.GridY)) continue;
							if (x == -1 && y == -1 && !CheckWalkable(nodeArray, gridNode.GridX, gridNode.GridY - 1) &&
								!CheckWalkable(nodeArray, gridNode.GridX - 1, gridNode.GridY)) continue;
							if (x == 1 && y == -1 && !CheckWalkable(nodeArray, gridNode.GridX, gridNode.GridY - 1) &&
								!CheckWalkable(nodeArray, gridNode.GridX + 1, gridNode.GridY)) continue;
						}

						neighbours.Add(nodeArray[checkX, checkY]);
					}
				}
			}
			return neighbours;
		}

		private bool CheckWalkable(Array2D<IGridNode> nodeArray, int x, int y)
		{
			if (x >= 0 && x < nodeArray.Width && y >= 0 && y < nodeArray.Height) return false;
			return nodeArray[x, y].Walkable;
		}
	}
}
