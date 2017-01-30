using System;
using System.Collections.Generic;
using Pathfindax.Collections;
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

		public int Width => NodeArray.Width;
		public int Height => NodeArray.Height;

		public SourceNodeGrid(Array2D<IGridNode> grid, float cellSize)
		{
			NodeArray = grid;
			WorldSize = new PositionF((NodeArray.Width * cellSize) - cellSize, (NodeArray.Height * cellSize) - cellSize);
		}

		public List<IGridNode> GetNeighbours(IGridNode gridNode)
		{
			var neighbours = new List<IGridNode>();

			for (var x = -1; x <= 1; x++)
			{
				for (var y = -1; y <= 1; y++)
				{
					if (x == 0 && y == 0)
						continue;

					var checkX = gridNode.GridX + x;
					var checkY = gridNode.GridY + y;

					if (checkX >= 0 && checkX < NodeArray.Width && checkY >= 0 && checkY < NodeArray.Height)
					{
						//if (x == 1 && y == 1 && !CheckWalkable(gridNode.GridX, gridNode.GridY + 1) && !CheckWalkable(gridNode.GridX + 1, gridNode.GridY)) continue;
						//if (x == -1 && y == 1 && !CheckWalkable(gridNode.GridX, gridNode.GridY + 1) && !CheckWalkable(gridNode.GridX - 1, gridNode.GridY)) continue;
						//if (x == -1 && y == -1 && !CheckWalkable(gridNode.GridX, gridNode.GridY - 1) && !CheckWalkable(gridNode.GridX - 1, gridNode.GridY)) continue;
						//if (x == 1 && y == -1 && !CheckWalkable(gridNode.GridX, gridNode.GridY - 1) && !CheckWalkable(gridNode.GridX + 1, gridNode.GridY)) continue;

						neighbours.Add(NodeArray[checkX, checkY]);
					}
				}
			}
			return neighbours;
		}

		private bool CheckWalkable(int x, int y)
		{
			if (x >= 0 && x < NodeArray.Width && y >= 0 && y < NodeArray.Height) return false;
			return NodeArray[x, y].Walkable;
		}

		public IGridNode NodeFromWorldPoint(PositionF worldPosition)
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
	}
}
