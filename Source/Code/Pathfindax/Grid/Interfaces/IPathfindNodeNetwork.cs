using Pathfindax.Nodes;

namespace Pathfindax.Grid
{
	/// <summary>
	/// Generic interface for nodenetworks. Each thread will have its own nodenetwork.
	/// </summary>
	/// <typeparam name="TNode"></typeparam>
	public interface IPathfindNodeNetwork<out TNode> : IPathfindNodeNetwork
		where TNode : INode
	{
		/// <summary>
		/// Gets a nodenetwork for this <paramref name="collisionCategory"/>.
		/// </summary>
		/// <param name="collisionCategory"></param>
		/// <returns></returns>
		TNode[] GetCollisionLayerNetwork(PathfindaxCollisionCategory collisionCategory);
	}

	/// <summary>
	/// Interface for nodenetworks
	/// </summary>
	public interface IPathfindNodeNetwork
	{
		IDefinitionNodeNetwork DefinitionNodeNetwork { get; }
	}
}