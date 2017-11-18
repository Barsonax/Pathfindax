using Pathfindax.Collections;
using Pathfindax.Utils;

namespace Pathfindax.Paths
{
	public interface IUpdatable
	{
		void Update();
	}

	public class PotentialField : PotentialFieldBase
	{
		public Array2D<float> PotentialArray { get; }

		public PotentialField(GridTransformer gridTransformer, int targetNode, Array2D<float> potentialArray) : base(gridTransformer)
		{
			PotentialArray = potentialArray;
			TargetNode = gridTransformer.TransformToGridCoords(targetNode);
			TargetWorldPosition = gridTransformer.TransformToWorldCoords(targetNode);
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
