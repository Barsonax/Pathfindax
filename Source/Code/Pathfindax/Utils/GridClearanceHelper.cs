using System;
using Duality;

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
		public static Vector2 GridNodeOffset(float agentSize, Vector2 nodeSize)
		{
			return nodeSize * Math.Max(0f, (agentSize - 1) * 0.5f);
		}
	}
}