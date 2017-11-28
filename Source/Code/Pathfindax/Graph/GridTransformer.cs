using Duality;
using Pathfindax.Utils;

namespace Pathfindax.Graph
{
	public class Transformer
	{
		public Vector2 Position { get; }
		public Vector2 Scale { get; }

		public Transformer(Vector2 scale, Vector2 position = default(Vector2))
		{
			Position = position;
			Scale = scale;
		}

		public Vector2 ToLocal(float worldX, float worldY)
		{
			var x = (worldX - Position.X) / Scale.X;
			var y = (worldY - Position.Y) / Scale.Y;
			return new Vector2(x, y);
		}

		public Vector2 ToWorld(float localX, float localY)
		{
			return new Vector2(localX * Scale.X + Position.X, localY * Scale.Y + Position.Y);
		}
	}

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