using System;
using Duality;
using Pathfindax.Grid;

namespace Pathfindax.Paths
{
	public abstract class PotentialFunction
	{
		public float MaxDistance { get; }
		public int MaxGridDistance { get; }
		public Point2 GridPosition { get; private set; }
		private readonly Func<Vector2> _worldPositionProvider;

		public PotentialFunction(Func<Vector2> worldPositionProvider, float maxDistance)
		{
			_worldPositionProvider = worldPositionProvider;
			MaxDistance = maxDistance;
			MaxGridDistance = (int) MathF.Ceiling(maxDistance);
		}

		public void UpdateGridPosition(GridTransformer gridTransformer)
		{
			var worldPosition = _worldPositionProvider.Invoke();
			GridPosition = gridTransformer.ToGridSpace(worldPosition);
		}

		public abstract float GetValue(int x, int y);
	}
}