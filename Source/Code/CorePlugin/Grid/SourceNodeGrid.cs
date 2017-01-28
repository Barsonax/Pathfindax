using System;
using System.Collections.Generic;
using Duality;
using Pathfindax.Collections;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Class that holds node data which wont change and is safe to share between threads
	/// </summary>
	[Serializable]
	public class SourceNodeGrid : ISourceNodeGrid
	{
		public Array2D<INode> Grid { get; }
		public Vector2 GridWorldSize { get; }

		public int Width => Grid.Width;
		public int Height => Grid.Height;

		public SourceNodeGrid(Array2D<INode> grid, float cellSize)
		{
			Grid = grid;
			GridWorldSize = new Vector2((Grid.Width * cellSize) - cellSize, (Grid.Height * cellSize) - cellSize);
		}

		public List<INode> GetNeighbours(INode node)
		{
			var neighbours = new List<INode>();

			for (var x = -1; x <= 1; x++)
			{
				for (var y = -1; y <= 1; y++)
				{
					if (x == 0 && y == 0)
						continue;

					var checkX = node.GridX + x;
					var checkY = node.GridY + y;

					if (checkX >= 0 && checkX < Grid.Width && checkY >= 0 && checkY < Grid.Height)
					{
						//if (x == 1 && y == 1 && !CheckWalkable(node.GridX, node.GridY + 1) && !CheckWalkable(node.GridX + 1, node.GridY)) continue;
						//if (x == -1 && y == 1 && !CheckWalkable(node.GridX, node.GridY + 1) && !CheckWalkable(node.GridX - 1, node.GridY)) continue;
						//if (x == -1 && y == -1 && !CheckWalkable(node.GridX, node.GridY - 1) && !CheckWalkable(node.GridX - 1, node.GridY)) continue;
						//if (x == 1 && y == -1 && !CheckWalkable(node.GridX, node.GridY - 1) && !CheckWalkable(node.GridX + 1, node.GridY)) continue;

						neighbours.Add(Grid[checkX, checkY]);
					}
				}
			}
			return neighbours;
		}

		private bool CheckWalkable(int x, int y)
		{
			if (x >= 0 && x < Grid.Width && y >= 0 && y < Grid.Height) return false;
			return Grid[x, y].Walkable;
		}

		public INode NodeFromWorldPoint(Vector2 worldPosition)
		{
			var percentX = worldPosition.X / GridWorldSize.X;
			var percentY = worldPosition.Y / GridWorldSize.Y;
			percentX = MathF.Clamp(percentX, 0, 1);
			percentY = MathF.Clamp(percentY, 0, 1);

			var x = (int)Math.Round((Grid.Width - 1) * percentX);
			var y = (int)Math.Round((Grid.Height - 1) * percentY);

			return Grid[x, y];
		}
	}
}
