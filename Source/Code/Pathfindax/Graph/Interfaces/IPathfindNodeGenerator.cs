using Pathfindax.Nodes;

namespace Pathfindax.Graph
{
	public interface IPathfindNodeGenerator<in TNode>
	{
		void Generate(TNode[] pathfindingNetwork, PathfindaxCollisionCategory collisionCategory);
	}
}