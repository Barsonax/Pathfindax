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
		/// <param name="generateNodeGridNeighbours"></param>
		/// <returns></returns>
		public SourceNodeGrid GeneratePreFilledArray(int width, int height, float nodeSize, GenerateNodeGridNeighbours generateNodeGridNeighbours)
		{
			var array = new Array2D<IGridNode>(width, height);

			for (int y = 0; y < height; y++)
			{
				for (int x = 0; x < width; x++)
				{
					var node = new GridNode(new PositionF(x * nodeSize, y * nodeSize), x, y);
					array[x, y] = node;
				}
			}

			if (generateNodeGridNeighbours != GenerateNodeGridNeighbours.None)
			{
				for (int y = 0; y < height; y++)
				{
					for (int x = 0; x < width; x++)
					{
						var node = array[x, y];
						var neighbours = GetNeighbours(array, node, generateNodeGridNeighbours);
						foreach (var neighbour in neighbours)
						{
							node.Neighbours.Add(neighbour);
						}
					}
				}
			}
			return new SourceNodeGrid(array, nodeSize);
		}

		private IList<IGridNode> GetNeighbours(Array2D<IGridNode> nodeArray, IGridNodeBase gridNode, GenerateNodeGridNeighbours generateNodeGridNeighbours)
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
						if (generateNodeGridNeighbours == GenerateNodeGridNeighbours.NoDiagonal)
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
