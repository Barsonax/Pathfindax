using Duality;
using Pathfindax.Collections;
using Pathfindax.Graph;

namespace Pathfindax.Paths
{
	class BlockedPotentialField : PotentialField
	{
		public BlockedPotentialField(GridTransformer gridTransformer, Point2 targetNodePosition) : base(gridTransformer, targetNodePosition, new Array2D<float>(0,0))
		{
		}

		public override float GetPotential(int x, int y)
		{
			return float.NaN;
		}
	}
}
