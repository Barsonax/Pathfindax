using Duality;
using Pathfindax.Collections;
using Pathfindax.Graph;

namespace Pathfindax.Paths
{
	public class PotentialField : PotentialFieldBase
	{
		public Array2D<float> PotentialArray { get; }

		public PotentialField(GridTransformer gridTransformer, Point2 targetNodePosition, Array2D<float> potentialArray) : base(gridTransformer)
		{
			PotentialArray = potentialArray;
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
