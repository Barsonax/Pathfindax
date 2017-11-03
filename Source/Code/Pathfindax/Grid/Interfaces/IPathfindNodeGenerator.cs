using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	public interface IPathfindNodeGenerator<in TNode>
		where TNode : INode
	{
		void Generate(TNode[] pathfindingNetwork, PathfindaxCollisionCategory collisionCategory);
	}
}