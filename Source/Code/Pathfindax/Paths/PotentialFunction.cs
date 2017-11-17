using System;
using Duality;
using Pathfindax.Utils;

namespace Pathfindax.Paths
{
	public abstract class PotentialFunction
	{
		public float MaxDistance { get; }
		public int MaxGridDistance { get; }
		public Point2 GridPosition { get; private set; }
		private readonly GridTransformer _gridTransformer;
		private readonly Func<Vector2> _worldPositionProvider;

		public PotentialFunction(GridTransformer gridTransformer, Func<Vector2> worldPositionProvider, float maxDistance)
		{
			_gridTransformer = gridTransformer;
			_worldPositionProvider = worldPositionProvider;
			MaxDistance = maxDistance;
			MaxGridDistance = (int) MathF.Ceiling(maxDistance);
		}

		public void UpdateGridPosition()
		{
			var worldPosition = _worldPositionProvider.Invoke();
			GridPosition = _gridTransformer.TransformToGridCoords(worldPosition);
		}

		public abstract float GetValue(int x, int y);
	}
}