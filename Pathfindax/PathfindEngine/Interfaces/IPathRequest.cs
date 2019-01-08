using System.Threading;
using Pathfindax.Nodes;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	public interface IPathRequest 
	{
		IPath CompletedPath { get; }
		PathRequestStatus Status { get; }
		WaitHandle WaitHandle { get; }

		int PathStart { get; }

		int PathEnd { get; }

		byte AgentSize { get; }

		PathfindaxCollisionCategory CollisionCategory { get; }
	}
}