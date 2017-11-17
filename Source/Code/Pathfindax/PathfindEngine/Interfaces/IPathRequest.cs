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

		IDefinitionNode PathStart { get; }

		IDefinitionNode PathEnd { get; }

		byte AgentSize { get; }

		PathfindaxCollisionCategory CollisionCategory { get; }
	}
}