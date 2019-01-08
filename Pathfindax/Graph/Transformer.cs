using Duality;

namespace Pathfindax.Graph
{
	public class Transformer
	{
		public static Transformer UnitTransform => new Transformer(new Vector2(1, 1));

		public Vector2 Position { get; }
		public Vector2 Scale { get; }

		public Transformer(Vector2 scale, Vector2 position = default)
		{
			Position = position;
			Scale = scale;
		}

		public Vector2 ToLocal(Vector2 worldPosition) => ToLocal(worldPosition.X, worldPosition.Y);
		public Vector2 ToLocal(float worldX, float worldY)
		{
			var x = (worldX - Position.X) / Scale.X;
			var y = (worldY - Position.Y) / Scale.Y;
			return new Vector2(x, y);
		}

		public Vector2 ToWorld(Vector2 localPosition) => ToWorld(localPosition.X, localPosition.Y);
		public Vector2 ToWorld(float localX, float localY)
		{
			return new Vector2(localX * Scale.X + Position.X, localY * Scale.Y + Position.Y);
		}
	}
}