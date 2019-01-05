using Pathfindax.Nodes;
using Pathfindax.PathfindEngine;
using Pathfindax.Paths;

namespace Duality.Plugins.Pathfindax.Components
{
	public interface IPathReceiver<T>
		where T : IPath
	{
		Vector3 Pos { get; }
		PathfindaxCollisionCategory CollisionCategory { get; }
		byte AgentSize { get; }

		void SetPath(T completedPath, PathRequestStatus status);
	}
}
