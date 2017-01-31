using System;
using System.Collections.Generic;
using Pathfindax.Collections;
using Pathfindax.Nodes;
using Pathfindax.Primitives;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Class that holds gridNode data which wont change and is safe to share between threads
	/// </summary>
	[Serializable]
	public class SourceNodeGrid : ISourceNodeGrid
	{
		public Array2D<IGridNode> NodeArray { get; }
		public PositionF WorldSize { get; }

		public SourceNodeGrid(Array2D<IGridNode> grid, float cellSize)
		{
			NodeArray = grid;
			WorldSize = new PositionF((NodeArray.Width * cellSize) - cellSize, (NodeArray.Height * cellSize) - cellSize);
		}

		private bool CheckWalkable(int x, int y)
		{
			if (x >= 0 && x < NodeArray.Width && y >= 0 && y < NodeArray.Height) return false;
			return NodeArray[x, y].Walkable;
		}

		public IGridNodeBase NodeFromWorldPoint(PositionF worldPosition)
		{
			var percentX = worldPosition.X / WorldSize.X;
			var percentY = worldPosition.Y / WorldSize.Y;
			percentX = Clamp(percentX, 0, 1);
			percentY = Clamp(percentY, 0, 1);

			var x = (int)Math.Round((NodeArray.Width - 1) * percentX);
			var y = (int)Math.Round((NodeArray.Height - 1) * percentY);

			return NodeArray[x, y];
		}

		private float Clamp(float value, float min, float max)
		{
			return value < min ? min : value > max ? max : value;
		}

		/// <summary>
		/// Returns a preconfigured <see cref="Array2D{TNode}"/>
		/// </summary>
		/// <param name="width"></param>
		/// <param name="height"></param>
		/// <param name="nodeSize"></param>
		/// <returns></returns>
		public static Array2D<IGridNode> GeneratePreFilledArray(int width, int height, float nodeSize)
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

			for (int y = 0; y < height; y++)
			{
				for (int x = 0; x < width; x++)
				{
					var node = array[x, y];
					var neighbours = GetNeighbours(array, node);
					foreach (var neighbour in neighbours)
					{
						node.Neighbours.Add(neighbour);
					}
				}
			}
			return array;
		}

		private static List<IGridNode> GetNeighbours(Array2D<IGridNode> nodeArray, IGridNodeBase gridNode)
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
						//if (x == 1 && y == 1 && !CheckWalkable(gridNode.GridX, gridNode.GridY + 1) && !CheckWalkable(gridNode.GridX + 1, gridNode.GridY)) continue;
						//if (x == -1 && y == 1 && !CheckWalkable(gridNode.GridX, gridNode.GridY + 1) && !CheckWalkable(gridNode.GridX - 1, gridNode.GridY)) continue;
						//if (x == -1 && y == -1 && !CheckWalkable(gridNode.GridX, gridNode.GridY - 1) && !CheckWalkable(gridNode.GridX - 1, gridNode.GridY)) continue;
						//if (x == 1 && y == -1 && !CheckWalkable(gridNode.GridX, gridNode.GridY - 1) && !CheckWalkable(gridNode.GridX + 1, gridNode.GridY)) continue;

						neighbours.Add(nodeArray[checkX, checkY]);
					}
				}
			}
			return neighbours;
		}
	}
}
