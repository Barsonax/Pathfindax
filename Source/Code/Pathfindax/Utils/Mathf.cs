using Duality;

namespace Pathfindax.Utils
{
	public static class Mathf
	{
		public static float Clamp(float value, float min, float max)
		{
			return value < min ? min : value > max ? max : value;
		}

		public static Vector2 Clamp(Vector2 vector, float maxLength)
		{
			if (vector.Length > maxLength)
				return vector.Normalized * maxLength;
			return vector;
		}

		public static int RoundToInt(float val)
		{
			if (val >= 0)
			{
				return (int)(val + 0.5f);
			}
			return (int)(val - 0.5f);
		}
	}
}
