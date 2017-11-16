using System.Linq;
using Pathfindax.Algorithms;
using Pathfindax.Utils;

namespace Pathfindax.Paths
{
	public class AggregratedPotentialField : PotentialFieldBase
	{
		public readonly PotentialField[] PotentialFields;

		public AggregratedPotentialField(GridTransformer gridTransformer, params PotentialField[] potentialFields) : base(gridTransformer)
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
				for (int i = 0; i < PotentialFields.Length; i++)
				{
					potential += PotentialFields[i].GetPotential(x, y);
				}
				return potential;
			}
			return DijkstraAlgorithm.ClearanceBlockedCost;
		}
	}
}