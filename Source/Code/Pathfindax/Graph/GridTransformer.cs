using System;
using Duality;
using Pathfindax.Utils;

namespace Pathfindax.Graph
{
	public class GridTransformer : Transformer
	{
		public Point2 GridSize { get; }
		public int NodeCount { get; }

		public GridTransformer(Point2 gridSize, Vector2 scale, Vector2 position = default(Vector2)) : base(scale, position)
		{
			GridSize = gridSize;
			NodeCount = gridSize.X * gridSize.Y;
		}

		public Point2 ToGrid(Vector2 worldPosition) => ToGrid(worldPosition.X, worldPosition.Y);
		public Point2 ToGrid(float worldX, float worldY)
		{
			var position = ToLocal(worldX, worldY);
			var x = PathfindaxMathF.RoundToInt(MathF.Clamp(position.X, 0, GridSize.X - 1));
			var y = PathfindaxMathF.RoundToInt(MathF.Clamp(position.Y, 0, GridSize.Y - 1));
			return new Point2(x, y);
		}

		public Point2 ToGrid(int i)
		{
			if (i >= NodeCount) throw new IndexOutOfRangeException();
			var y = i / GridSize.X;
			var x = i - y * GridSize.X;
			return new Point2(x, y);
		}

		public Vector2 ToWorld(int i)
		{
			var gridPosition = ToGrid(i);
			return ToWorld(gridPosition.X, gridPosition.Y);
		}

		public int ToIndex(int x, int y)
		{
			if (x >= GridSize.X || y >= GridSize.Y) throw new IndexOutOfRangeException();
			return y * GridSize.X + x;
		}
	}
}