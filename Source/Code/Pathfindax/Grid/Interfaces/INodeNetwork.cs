using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Generic interface for nodenetworks
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public interface IPathfindNodeNetwork<out TNode> : INodeNetwork
		where TNode : INode
	{
		TNode[] GetPathfindingNetwork(PathfindaxCollisionCategory collisionCategory);
	}

	/// <summary>
	/// Interface for nodenetworks
	/// </summary>
	public interface INodeNetwork
	{
	}
}