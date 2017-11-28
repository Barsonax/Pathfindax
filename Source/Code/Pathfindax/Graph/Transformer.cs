using Duality;

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
}