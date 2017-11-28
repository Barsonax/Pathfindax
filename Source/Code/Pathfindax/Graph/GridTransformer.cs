using Duality;
using Pathfindax.Utils;

namespace Pathfindax.Graph
{
	public class GridTransformer : Transformer
	{
		public Point2 GridSize { get; }

		public GridTransformer(Point2 gridSize, Vector2 scale, Vector2 position = default(Vector2)) : base(scale, position)
		{
			GridSize = gridSize;
		}

		public Vector2 ToWorldSpace(int i)
		{
			var gridPosition = ToGridSpace(i);
			return ToWorld(gridPosition.X, gridPosition.Y);
		}

		public Point2 ToGridSpace(Vector2 worldPosition)
		{
			return ToGridSpace(worldPosition.X, worldPosition.Y);
		}

		public Point2 ToGridSpace(float worldX, float worldY)
		{
			var position = ToLocal(worldX, worldY);
			var x = PathfindaxMathF.RoundToInt(MathF.Clamp(position.X, 0, GridSize.X - 1));
			var y = PathfindaxMathF.RoundToInt(MathF.Clamp(position.Y, 0, GridSize.Y - 1));
			return new Point2(x, y);
		}

		public Point2 ToGridSpace(int i)
		{
			var y = i / GridSize.X;
			var x = i - y * GridSize.X;
			return new Point2(x, y);
		}

		public int ToArrayIndex(int x, int y)
		{
			return y * GridSize.X + x;
		}
	}
}