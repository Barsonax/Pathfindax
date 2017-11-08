using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public interface IPathfindNodeGenerator<in TNode>
	{
		void Generate(TNode[] pathfindingNetwork, PathfindaxCollisionCategory collisionCategory);
	}
}