using System;
using Pathfindax.Collections;
using Pathfindax.Graph;

namespace Pathfindax.Paths
{
	public class PotentialArray
	{
		public Array2D<float>[] Arrays { get; }

		public GridTransformer GridTransformer { get; }

		public PotentialArray(GridTransformer gridTransformer, Array2D<float>[] potentialArrays)
		{
			if (potentialArrays == null) throw new ArgumentException("potentialArray cannot be null");
			foreach (var array in potentialArrays)
			{
				if (array.Width != gridTransformer.GridSize.X || array.Height != gridTransformer.GridSize.Y) throw new ArgumentException("The grid dimensions of the transformer have to match the array");
			}

			GridTransformer = gridTransformer;
			Arrays = potentialArrays;
		}
	}
}
