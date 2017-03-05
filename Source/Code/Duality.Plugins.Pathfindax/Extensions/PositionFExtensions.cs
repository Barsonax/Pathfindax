using Pathfindax.Primitives;

namespace Duality.Plugins.Pathfindax.Extensions
{
	/// <summary>
	/// Extensions for <see cref="PositionF"/>
	/// </summary>
	public static class PositionFExtensions
	{
		/// <summary>
		/// Converts the <see cref="PositionF"/> to a <see cref="Vector2"/>
		/// </summary>
		/// <param name="position"></param>
		/// <returns></returns>
		public static Vector2 ToVector2(this PositionF position)
		{
			return new Vector2(position.X, position.Y);
		}
	}
}
