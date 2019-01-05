using Pathfindax.Algorithms;
using Pathfindax.Graph;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	/// <summary>
	/// A dummy algorithm that is designed to do nothing.
	/// </summary>
	/// <typeparam name="TPathfindNodeNetwork"></typeparam>
	/// <typeparam name="TPath"></typeparam>
	public class DummyPathfindAlgorithm<TPathfindNodeNetwork, TPath> : IPathFindAlgorithm<TPathfindNodeNetwork, TPath>
		where TPathfindNodeNetwork : IPathfindNodeNetwork 
		where TPath : IPath
	{
		public TPath FindPath(TPathfindNodeNetwork nodeNetwork, IPathRequest pathRequest)
		{
			return default(TPath);
		}

		public TPath GetDefaultPath(TPathfindNodeNetwork nodeNetwork, IPathRequest pathRequest)
		{
			return default(TPath);
		}

		public bool ValidatePath(TPathfindNodeNetwork nodeNetwork, IPathRequest pathRequest, TPath path)
		{
			return false;
		}
	}
}