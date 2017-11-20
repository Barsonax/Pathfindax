using System.Collections.Generic;

namespace Pathfindax.PathfindEngine
{
	public class SingleSourcePathRequestComparer : IEqualityComparer<IPathRequest>
	{
		public bool Equals(IPathRequest x, IPathRequest y)
		{
			return Equals(x.PathEnd, y.PathEnd) && x.AgentSize == y.AgentSize && x.CollisionCategory == y.CollisionCategory;
		}

		public int GetHashCode(IPathRequest obj)
		{
			unchecked
			{
				var hashCode = obj.PathEnd != null ? obj.PathEnd.GetHashCode() : 0;
				hashCode = (hashCode * 397) ^ obj.AgentSize.GetHashCode();
				hashCode = (hashCode * 397) ^ (int)obj.CollisionCategory;
				return hashCode;
			}
		}
	}
}