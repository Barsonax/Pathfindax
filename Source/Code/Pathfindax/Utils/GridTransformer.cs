using Duality;

namespace Pathfindax.Utils
{
	public class GridTransformer
	{
		public Vector2 WorldSize { get;  }
		public Vector2 Offset { get;  }

		public Point2 GridSize { get;  }
		public Vector2 NodeSize { get;}
		public int NodeCount { get; }

		public GridTransformer(Vector2 worldSize, Vector2 offset, Point2 gridSize, Vector2 nodeSize)
		{
			WorldSize = worldSize;
			Offset = offset;
			GridSize = gridSize;
			NodeSize = nodeSize;
			NodeCount = gridSize.X * gridSize.Y;
		}

		public Vector2 TransformToWorldCoords(int i)
		{
			var gridCoords = TransformToGridCoords(i);
			return TransformToWorldCoords(gridCoords);
		}

		public Vector2 TransformToWorldCoords(Point2 gridPosition)
		{
			var value = gridPosition * NodeSize + Offset;
			return new Vector2(value.X, value.Y);
		}

		public Point2 TransformToGridCoords(Vector3 worldPosition)
		{
			return TransformToGridCoords(worldPosition.X, worldPosition.Y);
		}

		public Point2 TransformToGridCoords(Vector2 worldPosition)
		{
			return TransformToGridCoords(worldPosition.X, worldPosition.Y);
		}

		public Point2 TransformToGridCoords(float worldX, float worldY)
		{
			var percentX = (worldX - Offset.X) / WorldSize.X;
			var percentY = (worldY - Offset.Y) / WorldSize.Y;
			percentX = Mathf.Clamp(percentX, 0, 1);
			percentY = Mathf.Clamp(percentY, 0, 1);

			var x = Mathf.RoundToInt((GridSize.X - 1) * percentX);
			var y = Mathf.RoundToInt((GridSize.Y - 1) * percentY);

			return new Point2(x, y);
		}

		public Vector2 TransformToFloatGridCoords(float worldX, float worldY)
		{
			var percentX = (worldX - Offset.X) / WorldSize.X;
			var percentY = (worldY - Offset.Y) / WorldSize.Y;
			percentX = Mathf.Clamp(percentX, 0, 1);
			percentY = Mathf.Clamp(percentY, 0, 1);

			var x = (GridSize.X - 1) * percentX;
			var y = (GridSize.Y - 1) * percentY;

			return new Vector2(x, y);
		}

		public Point2 TransformToGridCoords(int i)
		{
			var y = i / GridSize.X;
			var x = i - y * GridSize.X;
			return new Point2(x, y);
		}

		public int TransformToGridIndex(int x, int y)
		{
			return y * GridSize.X + x;
		}
	}
}