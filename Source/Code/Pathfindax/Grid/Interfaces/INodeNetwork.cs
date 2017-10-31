using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Generic interface for nodenetworks
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public interface INodeNetwork<out TNode> : INodeNetwork
		where TNode : INode
	{
		new ISourceNodeNetwork<ISourceNode> SourceNodeNetwork { get; }
		TNode[] GetPathfindingNetwork(PathfindaxCollisionCategory collisionCategory);
	}

	/// <summary>
	/// Interface for nodenetworks
	/// </summary>
	public interface INodeNetwork
	{
		ISourceNodeNetwork SourceNodeNetwork { get; }
	}
}