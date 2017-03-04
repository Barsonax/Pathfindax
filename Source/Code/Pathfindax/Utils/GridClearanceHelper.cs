using System;

namespace Pathfindax.Utils
{
	/// <summary>
	/// Helper class for grid clearances
	/// </summary>
	public static class GridClearanceHelper
	{
		/// <summary>
		/// Calculates the offset for grid based clearance
		/// </summary>
		public static float GridNodeOffset(int agentSize, float nodeSize)
		{
			return nodeSize * Math.Max(0f, (agentSize - 1) * 0.5f);
		}
	}
}