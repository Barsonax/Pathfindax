using System.Linq;
using Pathfindax.Grid;

namespace Pathfindax.Paths
{
	public class AggregratedPotentialField : PotentialFieldBase
	{
		public readonly PotentialFieldBase[] PotentialFields;

		public AggregratedPotentialField(GridTransformer gridTransformer, params PotentialFieldBase[] potentialFields) : base(gridTransformer)
		{
			TargetNode = potentialFields.First().TargetNode;
			TargetWorldPosition = potentialFields.First().TargetWorldPosition;
			PotentialFields = potentialFields;
		}

		public override float GetPotential(int x, int y)
		{
			if (x >= 0 && y >= 0 && x < GridTransformer.GridSize.X && y < GridTransformer.GridSize.Y)
			{
				var potential = 0f;
				for (var i = 0; i < PotentialFields.Length; i++)
				{
					var p = PotentialFields[i].GetPotential(x, y);
					if (float.IsNaN(p)) return float.NaN;
					potential += p;
				}
				return potential;
			}
			return float.NaN;
		}
	}
}