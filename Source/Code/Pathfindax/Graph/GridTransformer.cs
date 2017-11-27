using Duality;
using Pathfindax.Utils;

namespace Pathfindax.Graph
{
	public class GridTransformer
	{
		public Vector2 WorldSize { get; }
		public Vector2 Offset { get; }
		public Point2 GridSize { get; }
		public Vector2 NodeSize { get; }
		public int NodeCount { get; }

		public GridTransformer(int gridWidth, int gridHeight, Vector2 nodeSize, Vector2 offset = default(Vector2))
		{
			Offset = offset;
			GridSize = new Point2(gridWidth, gridHeight);
			WorldSize = new Vector2(gridWidth * nodeSize.X - nodeSize.X, gridHeight * nodeSize.Y - nodeSize.Y);
			NodeSize = nodeSize;
			NodeCount = gridWidth * gridHeight;
		}

		public Vector2 ToWorldSpace(int i)
		{
			var gridPosition = ToGridSpace(i);
			return ToWorldSpace(gridPosition);
		}

		public Vector2 ToWorldSpace(Point2 gridPosition)
		{
			var value = gridPosition * NodeSize + Offset;
			return new Vector2(value.X, value.Y);
		}

		public Point2 ToGridSpace(Vector2 worldPosition)
		{
			return ToGridSpace(worldPosition.X, worldPosition.Y);
		}

		public Point2 ToGridSpace(float worldX, float worldY)
		{
			var percentX = (worldX - Offset.X) / WorldSize.X;
			var percentY = (worldY - Offset.Y) / WorldSize.Y;
			percentX = PathfindaxMathF.Clamp(percentX, 0, 1);
			percentY = PathfindaxMathF.Clamp(percentY, 0, 1);

			var x = PathfindaxMathF.RoundToInt((GridSize.X - 1) * percentX);
			var y = PathfindaxMathF.RoundToInt((GridSize.Y - 1) * percentY);

			return new Point2(x, y);
		}

		public Point2 ToGridSpace(int i)
		{
			var y = i / GridSize.X;
			var x = i - y * GridSize.X;
			return new Point2(x, y);
		}

		public int ToArraySpace(int x, int y)
		{
			return y * GridSize.X + x;
		}
	}
}