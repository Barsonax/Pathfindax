using System;
using Duality;
using Pathfindax.Collections;
using Pathfindax.Graph;

namespace Pathfindax.Paths
{
	public class PotentialField : PotentialFieldBase
	{
		public override int Width => PotentialArray.Width;
		public override int Height => PotentialArray.Height;
		public Array2D<float> PotentialArray { get; }

		public PotentialField(GridTransformer gridTransformer, Point2 targetNodePosition, Array2D<float> potentialArray) : base(gridTransformer)
		{
			if (potentialArray == null) throw new ArgumentException("potentialArray cannot be null");
			if (potentialArray.Width != gridTransformer.GridSize.X || potentialArray.Height != gridTransformer.GridSize.Y) throw new ArgumentException("The grid dimensions of the transformer have to match the array");
			PotentialArray = potentialArray;
			TargetNode = targetNodePosition;
			TargetWorldPosition = gridTransformer.ToWorld(targetNodePosition);
		}

		public PotentialField(GridTransformer gridTransformer, Point2 targetNodePosition) : base(gridTransformer)
		{
			TargetNode = targetNodePosition;
			TargetWorldPosition = gridTransformer.ToWorld(targetNodePosition);
		}

		public override float GetPotential(int x, int y)
		{
			if (x >= 0 && y >= 0 && x < PotentialArray.Width && y < PotentialArray.Height)
			{
				return PotentialArray[x, y];
			}
			return float.NaN;
		}
	}
}
