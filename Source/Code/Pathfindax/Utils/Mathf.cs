namespace Pathfindax.Utils
{
	public static class Mathf
	{
		public static float Clamp(float value, float min, float max)
		{
			return value < min ? min : value > max ? max : value;
		}
	}
}
