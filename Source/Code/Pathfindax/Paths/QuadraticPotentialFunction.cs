using System;
using Duality;

namespace Pathfindax.Paths
{
	/// <summary>
	/// Uses a quadratic function to add potential to a <see cref="DynamicPotentialField"/>
	/// </summary>
	public class QuadraticPotentialFunction : PotentialFunction
	{
		private readonly float _strengthModifier;
		private readonly float _offset;

		/// <summary>
		/// Creates a new <see cref="QuadraticPotentialFunction"/>
		/// </summary>
		/// <param name="worldPositionProvider"></param>
		/// <param name="maxDistance">At distance = <paramref name="maxDistance"/> the potential added will be equal to 0</param>
		/// <param name="maxStrength">At distance = 0 the potential added will be equal to this</param>
		public QuadraticPotentialFunction(Func<Vector2> worldPositionProvider, float maxDistance, float maxStrength) : base(worldPositionProvider, maxDistance)
		{
			_strengthModifier = 1f;
			var valueAtMaxdistance = GetValue(maxDistance);
			_offset = -valueAtMaxdistance;
			_strengthModifier = 1 / (_offset / maxStrength);
		}

		private float GetValue(float distance)
		{
			var value = (-distance * distance + _offset) * _strengthModifier;
			return value;
		}

		public override float GetValue(int x, int y)
		{
			var distance = new Vector2(GridPosition.X - x, GridPosition.Y - y).Length;
			var value = GetValue(distance);
			if (value < 0) return 0f;
			return value;
		}
	}
}